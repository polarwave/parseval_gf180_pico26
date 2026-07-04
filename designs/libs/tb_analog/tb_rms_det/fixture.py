import os
import subprocess

def run_ngspice(netlist, sim_dir):
    #create the directory
    os.makedirs(sim_dir, exist_ok=True)

    with open(f"{sim_dir}/netlist.spice", "w") as f:
        f.write(netlist)
    print(f"Running ngspice in {sim_dir}")
    # run ngspice and save the output to a file
    result = subprocess.run(
        ["/foss/tools/ngspice/bin/ngspice", "-b", f"{sim_dir}/netlist.spice"], 
        capture_output=True, 
        text=True
    )

    # check if the result contains the word "Error"

    with open(f"{sim_dir}/ngspice.log", "w") as f:
        f.write(result.stdout)
        f.write(result.stderr)

    # assert if the log file contains the word "Error"

    assert "Error" not in result.stdout+result.stderr

#======================================================
# Testbench Main
#======================================================
def netlist_test_bench(netlist_file):
    with open(netlist_file, "r") as f:
        return f.read()

#======================================================
# Schematic Parameters (Injected into Xschem netlist)
#======================================================
def netlist_params(n_skew=3, m_even=8, w_unit=4.0, l_unit=0.6, 
                   w_bias=4.0, l_bias=2.0, w_pbias=30.0, l_pbias=2.0, 
                   w_even=6.0, l_even=0.6, w_out=2.4, l_out=0.6, c_avg="10n"):
    return f"""
    * ---------------- Schematic Parameters ----------------
    * Core Quad (V-I Conversion)
    .param N_SKEW={n_skew}
    .param W_UNIT={w_unit}u
    .param L_UNIT={l_unit}u
    
    * Even Current Mirror (Isolation & Amplification)
    .param M_EVEN={m_even}
    .param W_EVEN={w_even}u
    .param L_EVEN={l_even}u
    
    * Output Stage (I-V Conversion)
    .param W_OUT={w_out}u
    .param L_OUT={l_out}u
    
    * Bias Tree
    .param W_BIAS={w_bias}u
    .param L_BIAS={l_bias}u
    .param W_PBIAS={w_pbias}u
    .param L_PBIAS={l_pbias}u
    
    * Filter Capacitor
    .param c_avg={c_avg}
    """

#======================================================
# PVT Header
#======================================================
def netlist_pvt_header(corner="typical", vdd=5.0, i_ref=10e-6):
    netlist = ""
    netlist += netlist_model(corner)
    netlist += netlist_power(vdd=vdd)
    netlist += netlist_bias(i_ref=i_ref)
    return netlist

def netlist_model(corner="typical"):

    return f"""
    * ---------------- Model ----------------
    .include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
    .lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice {corner}
    """

def netlist_power(vdd=5.0):
    return f"""
    * ---------------- Power Supplies ----------------
    V_vss vss GND 0
    V_vdd vdd vss {vdd}
    """

def netlist_bias(i_ref=10e-6):
    return f"""
    * ---------------- Bias Current ----------------
    I_ref vdd i_ref {i_ref}
    """

#======================================================
# Testbench Wiring and Stimulus
#======================================================

def netlist_stimulus_dc(vin_cm=2.5):
    return f"""
    * ---------------- Stimulus (DC OP) ----------------
    V_inp vinp vss {vin_cm}
    V_inn vinn vss {vin_cm}
    """

def netlist_stimulus_ac(vin_cm=2.5, vin_diff_ac=1.0): 
    ac_amp = vin_diff_ac / 2
    return f"""
    * ---------------- Stimulus (diff AC) ----------------
    V_inp vinp vss {vin_cm} AC {ac_amp}
    V_inn vinn vss {vin_cm} AC {-ac_amp}
    """

def netlist_stimulus_sin_diff(vin_cm=2.5, vin_diff=100e-3, freq=10e6, t_delay=0, theta=0, phase=0):
    amp = vin_diff / 2
    return f"""
    * ---------------- Stimulus (diff sine) ----------------
    V_inp vinp vss SIN({vin_cm} {amp} {freq} {t_delay} {theta} {phase})
    V_inn vinn vss SIN({vin_cm} {-amp} {freq} {t_delay} {theta} {phase})
    """
    
#======================================================
# Simulation Control Blocks
#======================================================
def netlist_sim_op(filename="op.log"):
    return f"""
    * ---------------- Simulation DC operating point ----------------
    .control
    OP
    show all > {filename}
    .endc
    """

def netlist_sim_dc(sweep_src="V_inp", start=1.5, stop=3.5, step=0.01, filename="results.raw"):
    return f"""
    * ---------------- Simulation DC sweep ----------------
    .control
    save all @m.x1.xm8.m0[id]
    DC {sweep_src} {start} {stop} {step}
    write {filename}
    .endc
    """

def netlist_sim_ac(start=1e6, stop=10e9, dec=10, filename="results.raw"):
    return f"""
    * ---------------- Simulation AC sweep ----------------
    .control
    save all
    AC DEC {dec} {start} {stop}
    write {filename}
    .endc
    """

def netlist_sim_tran(t_step="1n", t_stop="50u", filename="results.raw"):
    return f"""
    * ---------------- Simulation Transient ----------------
    .control
    save all
    TRAN {t_step} {t_stop}
    write {filename}
    .endc
    """

#======================================================
# Data Parsing Blocks
#======================================================

def get_op_bias(op_file_path, devices, params=['id', 'vgs', 'vds', 'vth', 'vdsat']):
    """
    Parses an ngspice OP log. 
    'devices' can be a list of names, or a dict of {"device_name": "Description"}.
    """
    all_data = {}
    current_columns = []
    
    # 1. Quickly map the file structure
    with open(op_file_path, "r") as f:
        for line in f:
            parts = line.strip().split()
            if not parts: continue
            
            # Lock onto device column headers
            if parts[0] == "device":
                current_columns = parts[1:]
                for dev in current_columns:
                    if dev not in all_data:
                        all_data[dev] = {}
                        
            # Map the requested parameters to the current columns
            elif parts[0] in params and current_columns:
                for i, dev in enumerate(current_columns):
                    if i + 1 < len(parts):
                        all_data[dev][parts[0]] = float(parts[i+1])
                        
    # 2. Extract only the devices you asked for and attach the description
    results = {}
    is_dict = isinstance(devices, dict)
    
    for dev in devices:
        results[dev] = all_data.get(dev, {"error": "Not found in log"}).copy()
        # Add the human-readable description field
        results[dev]['desc'] = devices[dev] if is_dict else ""
        
    return results
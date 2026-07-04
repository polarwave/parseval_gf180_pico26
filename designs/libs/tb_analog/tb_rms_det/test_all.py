from fixture import *


# get the testbench directory and name
script_path = os.path.abspath(__file__)
TB_DIR = os.path.dirname(script_path)
TB_NAME = os.path.basename(TB_DIR)
NETLIST_FILE = f"{TB_DIR}/{TB_NAME}.spice"

def test_op():
    sim_dir = f"/foss/designs/simulations/{TB_NAME}/test_op"
    netlist = ""
    netlist += netlist_params()               # Inject schematic variables
    netlist += netlist_pvt_header()           # PVT and Bias setup
    netlist += netlist_stimulus_dc(vin_cm=2.5)          # Sets inputs to VCM
    netlist += netlist_sim_op(filename=f"{sim_dir}/op.log")
    
    # Read main netlist 
    netlist += netlist_test_bench(NETLIST_FILE)

    run_ngspice(netlist, sim_dir)
    assert os.path.exists(f"{sim_dir}/op.log")

def test_dc():
    sim_dir = f"/foss/designs/simulations/{TB_NAME}/test_dc"
    netlist = ""
    netlist += netlist_params()               
    netlist += netlist_pvt_header()
    netlist += netlist_stimulus_dc()          # Base VCM
    # Sweeps V_inp to find the CMOS Quad window
    netlist += netlist_sim_dc(sweep_src="V_inp", start=1.5, stop=3.5, step=0.01, filename=f"{sim_dir}/results.raw")
    
    # Read main netlist 
    netlist += netlist_test_bench(NETLIST_FILE)

    run_ngspice(netlist, sim_dir)
    assert os.path.exists(f"{sim_dir}/results.raw")

def test_tran():
    sim_dir = f"/foss/designs/simulations/{TB_NAME}/test_tran"
    netlist = ""
    netlist += netlist_params()               
    netlist += netlist_pvt_header()
    # 400 MHz RF stimulus with 200mV differential amplitude
    netlist += netlist_stimulus_sin_diff(freq=10e6, vin_diff=200e-3) 
    netlist += netlist_sim_tran(t_step="1n", t_stop="50u", filename=f"{sim_dir}/results.raw")

    # Read main netlist 
    netlist += netlist_test_bench(NETLIST_FILE)

    run_ngspice(netlist, sim_dir)
    assert os.path.exists(f"{sim_dir}/results.raw")


if __name__ == "__main__":
    
    test_op()
    test_dc()
    test_tran()
v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -200 -40 -40 -40 {lab=#net1}
N -200 -80 -200 -40 {lab=#net1}
N -240 -140 -200 -140 {lab=0}
N -240 -140 -240 -120 {lab=0}
N -240 -20 -40 -20 {lab=0}
N -240 -0 -40 0 {lab=Rp}
N -240 -0 -240 50 {lab=Rp}
N -90 20 -40 20 {lab=Sp}
N -90 20 -90 50 {lab=Sp}
N -240 110 -240 140 {lab=0}
N -90 110 -90 140 {lab=0}
N -300 -20 -240 -20 {lab=0}
N -300 -20 -300 -10 {lab=0}
C {SR_latch.sym} 110 -10 0 0 {name=x1}
C {vsource.sym} -200 -110 2 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} -240 80 0 0 {name=V2 value="PULSE(3 0 20n 100p 100p 20n 200n)" savecurrent=false}
C {vsource.sym} -90 80 0 0 {name=V3 value="PULSE(3 0 60n 100p 100p 20n 200n)" savecurrent=false}
C {gnd.sym} -300 -10 0 0 {name=l1 lab=0}
C {gnd.sym} -240 -120 0 0 {name=l2 lab=0}
C {gnd.sym} -240 130 0 0 {name=l3 lab=0}
C {gnd.sym} -90 140 0 0 {name=l4 lab=0}
C {lab_pin.sym} -240 30 0 0 {name=p1 sig_type=std_logic lab=Rp}
C {lab_pin.sym} -90 40 0 0 {name=p2 sig_type=std_logic lab=Sp}
C {lab_pin.sym} 260 -40 2 0 {name=p3 sig_type=std_logic lab=Q}
C {lab_pin.sym} 260 -20 2 0 {name=p4 sig_type=std_logic lab=Qp}
C {devices/code_shown.sym} -830 -210 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -830 -80 0 0 {name=Simulation only_toplevel=false value="
.control
.save all
tran 100p 200n
plot Sp Rp Q Qp
.endc
"}

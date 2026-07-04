v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
F {}
E {}
P 3 6 1290 -490 1290 -280 1390 -280 1390 -490 1290 -490 1290 -470 {}
T {TI LM134: Current Source IC to be used} 10 -480 0 0 0.2 0.2 {}
T {Datasheet: https://www.ti.com/lit/ds/symlink/lm334.pdf} 10 -470 0 0 0.1 0.1 {}
T {Off-Chip Averaging Capacitor} 1260 -510 0 0 0.2 0.2 {}
N 890 -450 950 -450 {lab=#net1}
N 500 -460 520 -460 {lab=#net2}
N 520 -490 520 -460 {lab=#net2}
N 520 -490 590 -490 {lab=#net2}
N 500 -420 520 -420 {lab=#net3}
N 520 -420 520 -400 {lab=#net3}
N 520 -400 590 -400 {lab=#net3}
N 570 -450 590 -450 {lab=vinp}
N 570 -430 590 -430 {lab=vinn}
N 1250 -450 1280 -450 {lab=vrms}
N 1280 -450 1400 -450 {lab=vrms}
N 1320 -360 1320 -340 {lab=vss}
N 1320 -450 1320 -420 {lab=vrms}
C {libs/core_analog/quad_diff_in/quad_diff_in.sym} 740 -430 0 0 {name=x1}
C {libs/core_analog/iref/iref.sym} 350 -440 0 0 {name=x2}
C {libs/core_analog/rms_out/rms_out.sym} 1100 -450 0 0 {name=x3}
C {lab_pin.sym} 570 -450 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 570 -430 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {libs/misc/title.sym} 160 -30 0 0 {name=l11 author="Project Parseval"}
C {lab_pin.sym} 1400 -450 0 1 {name=p3 sig_type=std_logic lab=vrms}
C {lab_pin.sym} 350 -500 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 350 -380 3 0 {name=p5 sig_type=std_logic lab=vss}
C {lab_pin.sym} 740 -520 1 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1100 -500 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 740 -370 3 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1100 -400 3 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_pin.sym} 200 -440 0 0 {name=p10 sig_type=std_logic lab=i_ref}
C {capa.sym} 1320 -390 0 0 {name=C1
m=1
value=\{c_avg\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1320 -340 3 0 {name=p11 sig_type=std_logic lab=vss}

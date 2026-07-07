v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 830 -810 830 -770 {lab=inp}
N 740 -830 740 -790 {lab=inn}
N 660 -880 660 -840 {lab=#net1}
N 1000 -720 1000 -680 {lab=iref}
N 1000 -620 1000 -580 {lab=GND}
N 660 -780 660 -740 {lab=GND}
N 740 -630 740 -590 {lab=GND}
N 830 -620 830 -580 {lab=GND}
N 740 -890 740 -830 {lab=inn}
N 1145 -850 1145 -810 {lab=GND}
N 660 -980 660 -940 {lab=VDD}
N 1040 -700 1040 -680 {lab=iref}
N 1000 -700 1040 -700 {lab=iref}
N 1040 -620 1040 -600 {lab=GND}
N 1000 -600 1040 -600 {lab=GND}
N 830 -770 830 -760 {lab=inp}
N 740 -790 740 -770 {lab=inn}
N 740 -710 740 -690 {lab=#net2}
N 830 -700 830 -680 {lab=#net3}
N 1145 -930 1145 -910 {lab=#net4}
N 740 -1010 740 -890 {lab=inn}
N 740 -1010 950 -1010 {lab=inn}
N 830 -970 950 -970 {lab=inp}
N 830 -970 830 -810 {lab=inp}
N 950 -1010 960 -1010 {lab=inn}
N 950 -970 960 -970 {lab=inp}
N 1000 -1100 1000 -1030 {lab=iref}
N 1020 -1100 1020 -1030 {lab=VDD}
N 1080 -990 1120 -990 {lab=out}
N 1120 -990 1160 -990 {lab=out}
N 1020 -950 1020 -910 {lab=GND}
C {devices/code_shown.sym} 1280 -950 0 0 {name=NGSPICE only_toplevel=true
value=".control
save all
tran 10n 25u
plot v(inp) v(inn) v(out)
write NMOS_comparator_tb.raw
.endc
"}
C {devices/code_shown.sym} 1130 -680 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {isource.sym} 1000 -650 2 0 {name=I0 value=10u}
C {vsource.sym} 660 -810 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 830 -650 0 0 {name=VINP value="sin(0.5 1 200k 0 0)" savecurrent=false}
C {gnd.sym} 1000 -580 0 0 {name=l1 lab=GND}
C {gnd.sym} 660 -740 0 0 {name=l2 lab=GND}
C {gnd.sym} 740 -590 0 0 {name=l3 lab=GND}
C {gnd.sym} 830 -580 0 0 {name=l4 lab=GND}
C {vdd.sym} 660 -980 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 890 -1010 0 0 {name=p1 sig_type=std_logic lab=inn}
C {lab_wire.sym} 1000 -700 0 0 {name=p4 sig_type=std_logic lab=iref}
C {lab_wire.sym} 830 -800 0 0 {name=p6 sig_type=std_logic lab=inp}
C {noconn.sym} 1155 -990 2 0 {name=l5}
C {vsource.sym} 740 -660 0 0 {name=VINN value=0.7 savecurrent=false}
C {capa.sym} 1145 -880 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1145 -810 0 0 {name=l6 lab=GND}
C {res.sym} 830 -730 0 0 {name=R3
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 740 -740 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 660 -910 0 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 1040 -650 0 0 {name=R4
value=1MEG
footprint=1206
device=resistor
m=1}
C {vsource.sym} 1145 -960 0 0 {name=V2 value=0 savecurrent=false}
C {vdd.sym} 1020 -1100 0 0 {name=l7 lab=VDD}
C {lab_wire.sym} 1000 -1090 0 0 {name=p2 sig_type=std_logic lab=iref
}
C {lab_wire.sym} 1115 -990 0 0 {name=p3 sig_type=std_logic lab=out}
C {pmos_comp/nmos_comp.sym} 830 -910 0 0 {name=xn_comp}
C {gnd.sym} 1020 -910 0 0 {name=l8 lab=GND}

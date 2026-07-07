v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -770 -90 -510 -90 {lab=xxx}
N -760 -380 -550 -380 {lab=Q}
N -760 -400 -730 -400 {lab=VDD}
N -730 -480 -730 -400 {lab=VDD}
N -1210 -480 -730 -480 {lab=VDD}
N -1210 -480 -1210 -260 {lab=VDD}
N -770 -110 -740 -110 {lab=VDD}
N -740 -140 -740 -110 {lab=VDD}
N -1210 -140 -740 -140 {lab=VDD}
N -1210 -260 -1210 -140 {lab=VDD}
N -1270 -300 -1210 -300 {lab=VDD}
N -760 -360 -600 -360 {lab=xxx}
N -600 -360 -600 -90 {lab=xxx}
N -770 -50 -550 -50 {lab=Q}
N -550 -380 -550 -50 {lab=Q}
N -560 -380 -520 -380 {lab=Q}
N -770 -70 -680 -70 {lab=Sp}
N -680 -70 -680 50 {lab=Sp}
N -760 -340 -660 -340 {lab=Rp}
N -660 -340 -660 50 {lab=Rp}
N -760 -320 -740 -320 {lab=VSS}
N -740 -320 -740 -180 {lab=VSS}
N -1260 -180 -740 -180 {lab=VSS}
N -770 -30 -760 -30 {lab=VSS}
N -760 -30 -760 20 {lab=VSS}
N -1270 20 -760 20 {lab=VSS}
N -1270 -180 -1270 20 {lab=VSS}
N -1280 -180 -1250 -180 {lab=VSS}
C {NAND.sym} -910 -200 0 0 {name=x1}
C {NAND.sym} -920 90 0 0 {name=x2}
C {ipin.sym} -1270 -300 0 0 {name=p1 lab=VDD}
C {ipin.sym} -680 50 3 0 {name=p3 lab=Sp}
C {ipin.sym} -660 50 3 0 {name=p4 lab=Rp}
C {ipin.sym} -1280 -180 0 0 {name=p5 lab=VSS}
C {opin.sym} -510 -90 0 0 {name=p2 lab=Qp}
C {opin.sym} -520 -380 0 0 {name=p6 lab=Q}

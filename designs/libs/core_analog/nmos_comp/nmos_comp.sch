v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 1420 -300 {}
N 970 -420 1110 -420 {lab=iref}
N 1060 -570 1120 -570 {lab=#net1}
N 1120 -570 1120 -540 {lab=#net1}
N 1100 -540 1240 -540 {lab=#net1}
N 1240 -540 1470 -540 {lab=#net1}
N 820 -530 820 -470 {lab=iref}
N 930 -320 1150 -320 {lab=vss}
N 1030 -320 1030 -300 {lab=vss}
N 1110 -420 1220 -420 {lab=iref}
N 1150 -320 1260 -320 {lab=vss}
N 1060 -840 1060 -570 {lab=#net1}
N 1060 -880 1060 -840 {lab=#net1}
N 1100 -910 1150 -910 {lab=#net2}
N 1060 -1020 1060 -940 {lab=vdd}
N 1060 -1020 1190 -1020 {lab=vdd}
N 1190 -1020 1190 -940 {lab=vdd}
N 1190 -1020 1290 -1020 {lab=vdd}
N 1460 -1020 1560 -1020 {lab=vdd}
N 1560 -1020 1560 -930 {lab=vdd}
N 1120 -910 1120 -860 {lab=#net2}
N 1120 -860 1190 -860 {lab=#net2}
N 1230 -700 1410 -700 {lab=i_bias_n}
N 1190 -880 1190 -820 {lab=#net2}
N 1230 -820 1230 -760 {lab=#net2}
N 1600 -900 1670 -900 {lab=#net3}
N 1710 -870 1710 -570 {lab=vout}
N 1470 -540 1670 -540 {lab=#net1}
N 1260 -320 1710 -320 {lab=vss}
N 1710 -430 1710 -320 {lab=vss}
N 1710 -1020 1710 -930 {lab=vdd}
N 1560 -1020 1710 -1020 {lab=vdd}
N 940 -730 1190 -730 {lab=inn}
N 1550 -730 1550 -670 {lab=inp}
N 940 -670 1550 -670 {lab=inp}
N 1410 -700 1510 -700 {lab=i_bias_n}
N 1710 -730 1730 -730 {lab=vout}
N 1060 -540 1060 -510 {lab=vss}
N 1710 -540 1710 -510 {lab=vss}
N 1560 -930 1560 -900 {lab=vdd}
N 1710 -930 1710 -900 {lab=vdd}
N 1190 -940 1190 -910 {lab=vdd}
N 1060 -940 1060 -910 {lab=vdd}
N 1220 -420 1330 -420 {lab=iref}
N 990 -460 990 -430 {lab=iref}
N 990 -430 990 -420 {lab=iref}
N 1060 -510 1060 -320 {lab=vss}
N 820 -470 820 -460 {lab=iref}
N 1710 -510 1710 -430 {lab=vss}
N 1480 -730 1510 -730 {lab=vss}
N 1230 -730 1250 -730 {lab=vss}
N 1250 -730 1250 -320 {lab=vss}
N 1480 -730 1480 -320 {lab=vss}
N 810 -410 810 -320 {lab=vss}
N 820 -380 820 -330 {lab=vss}
N 860 -420 970 -420 {lab=iref}
N 990 -480 990 -460 {lab=iref}
N 820 -480 990 -480 {lab=iref}
N 1370 -490 1370 -460 {lab=i_bias_n}
N 1370 -380 1370 -320 {lab=vss}
N 1380 -410 1380 -320 {lab=vss}
N 1370 -700 1370 -490 {lab=i_bias_n}
N 1290 -1020 1460 -1020 {lab=vdd}
N 1190 -820 1230 -820 {lab=#net2}
N 820 -460 820 -450 {lab=iref}
N 810 -420 810 -410 {lab=vss}
N 810 -420 820 -420 {lab=vss}
N 820 -390 820 -380 {lab=vss}
N 1370 -460 1370 -450 {lab=i_bias_n}
N 1370 -420 1380 -420 {lab=vss}
N 1380 -420 1380 -410 {lab=vss}
N 1370 -390 1370 -380 {lab=vss}
N 810 -320 930 -320 {lab=vss}
N 820 -330 820 -320 {lab=vss}
N 1230 -820 1290 -820 {lab=#net2}
N 1290 -820 1380 -820 {lab=#net2}
N 1380 -850 1380 -820 {lab=#net2}
N 1560 -870 1560 -820 {lab=#net3}
N 1510 -820 1560 -820 {lab=#net3}
N 1510 -820 1510 -760 {lab=#net3}
N 1560 -850 1630 -850 {lab=#net3}
N 1630 -900 1630 -850 {lab=#net3}
N 1420 -820 1510 -820 {lab=#net3}
N 1330 -850 1350 -850 {lab=#net3}
N 1350 -850 1350 -810 {lab=#net3}
N 1350 -810 1510 -810 {lab=#net3}
N 1290 -1020 1290 -880 {lab=vdd}
N 1420 -1020 1420 -880 {lab=vdd}
N 1420 -880 1420 -850 {lab=vdd}
N 1290 -880 1290 -850 {lab=vdd}
C {symbols/nfet_03v3.sym} 1080 -540 0 1 {name=M3
L=1u
W=3.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1690 -540 0 0 {name=M4
L=1u
W=3.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {ipin.sym} 1030 -300 3 0 {name=p1 lab=vss}
C {symbols/nfet_03v3.sym} 1210 -730 0 0 {name=M1
L=1u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1530 -730 0 1 {name=M2
L=1u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1080 -910 0 1 {name=M10
L=0.5u
W=16.5u
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1580 -900 0 1 {name=M6
L=0.5u
W=10u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1170 -910 0 0 {name=M5
L=0.5u
W=10u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1690 -900 0 0 {name=M9
L=0.5u
W=16.5u
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} 1060 -1020 1 0 {name=p2 lab=vdd
}
C {ipin.sym} 820 -530 1 0 {name=p3 lab=iref

}
C {ipin.sym} 940 -730 0 0 {name=p4 lab=inn}
C {ipin.sym} 940 -670 0 0 {name=p5 lab=inp}
C {opin.sym} 1730 -730 0 0 {name=p6 lab=vout}
C {symbols/nfet_03v3.sym} 840 -420 0 1 {name=M8
L=1u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1350 -420 0 0 {name=M7
L=1u
W=10u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1370 -600 0 0 {name=p7 sig_type=std_logic lab=i_bias_n}
C {symbols/pfet_03v3.sym} 1310 -850 0 1 {name=M12
L=0.5u
W=20u
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1400 -850 0 0 {name=M13
L=0.5u
W=20u
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}

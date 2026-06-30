v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -90 50 -90 {lab=vgs}
N 90 -60 90 0 {lab=vss}
N 90 -90 150 -90 {lab=vss}
N 90 -180 90 -120 {lab=vss}
C {devices/lab_wire.sym} 30 -90 0 0 {name=p4 sig_type=std_logic lab=vgs}
C {devices/lab_wire.sym} 90 -30 3 0 {name=p5 sig_type=std_logic lab=vss}
C {symbols/nfet_03v3.sym} 70 -90 0 0 {name=M1
L=0.28u
W=0.22u
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
C {devices/lab_wire.sym} 120 -90 0 1 {name=p2 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 90 -150 1 0 {name=p1 sig_type=std_logic lab=vds}

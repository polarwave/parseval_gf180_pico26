v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 40 580 40 {lab=vss}
N 130 -30 130 40 {lab=vss}
N 110 -60 130 -60 {lab=vss}
N 110 -60 110 40 {lab=vss}
N 20 -140 130 -140 {lab=Iref}
N 130 -140 130 -90 {lab=Iref}
N 170 -60 180 -60 {lab=Iref}
N 180 -100 180 -60 {lab=Iref}
N 130 -110 180 -110 {lab=Iref}
N 340 -220 350 -220 {lab=Mref_src}
N 350 -220 350 -180 {lab=Mref_src}
N 300 -180 350 -180 {lab=Mref_src}
N 300 -190 300 -180 {lab=Mref_src}
N 300 -30 300 40 {lab=vss}
N 180 -60 260 -60 {lab=Iref}
N 300 -60 340 -60 {lab=vss}
N 340 -60 340 40 {lab=vss}
N 300 -180 300 -90 {lab=Mref_src}
N 20 -270 570 -270 {lab=vdd}
N 570 -270 580 -270 {lab=vdd}
N 300 -270 300 -250 {lab=vdd}
N 350 -220 460 -220 {lab=Mref_src}
N 220 -110 220 -60 {lab=Iref}
N 220 -110 460 -110 {lab=Iref}
N 180 -110 180 -100 {lab=Iref}
N 280 -220 300 -220 {lab=vdd}
N 280 -270 280 -220 {lab=vdd}
C {ipin.sym} 20 -140 0 0 {name=p1 lab=Iref}
C {iopin.sym} 20 -270 0 1 {name=p2 lab=vdd}
C {iopin.sym} 20 40 0 1 {name=p3 lab=vss}
C {opin.sym} 460 -220 0 0 {name=p4 lab=Mref_src}
C {opin.sym} 460 -110 0 0 {name=p5 lab=Mref_sink}
C {symbols/pfet_05v0.sym} 320 -220 0 1 {name=M2
L=0.50u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 150 -60 0 1 {name=M1
L=0.60u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 280 -60 0 0 {name=M3
L=0.60u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}

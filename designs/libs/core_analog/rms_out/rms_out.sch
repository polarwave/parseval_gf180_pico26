v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -310 80 -310 {lab=Mref_even}
N 120 -390 120 -340 {lab=vdd}
N 120 -310 140 -310 {lab=vdd}
N 140 -390 140 -310 {lab=vdd}
N 120 -80 120 -20 {lab=vss}
N 120 -160 120 -140 {lab=vrms}
N 70 -150 70 -110 {lab=vrms}
N 70 -110 80 -110 {lab=vrms}
N 120 -190 120 -160 {lab=vrms}
N 120 -280 120 -250 {lab=vrms}
N 20 -20 260 -20 {lab=vss}
N 10 -390 260 -390 {lab=vdd}
N 120 -110 140 -110 {lab=vss}
N 140 -110 140 -20 {lab=vss}
N 120 -250 120 -190 {lab=vrms}
N 120 -200 320 -200 {lab=vrms}
N 70 -160 70 -150 {lab=vrms}
N 70 -160 120 -160 {lab=vrms}
C {ipin.sym} 10 -310 0 0 {name=p1 lab=Mref_even}
C {iopin.sym} 10 -390 0 1 {name=p2 lab=vdd}
C {iopin.sym} 20 -20 0 1 {name=p3 lab=vss}
C {opin.sym} 320 -200 0 0 {name=p4 lab=vrms}
C {symbols/pfet_05v0.sym} 100 -310 0 0 {name=M1
L=\{L_EVEN\}
W=\{W_EVEN\}
nf=1
m=\{M_EVEN\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 100 -110 0 0 {name=M2
L=\{L_OUT\}
W=\{W_OUT\}
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

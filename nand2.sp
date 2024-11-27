.INCLUDE "NMOS_VTL.inc"
.INCLUDE "PMOS_VTL.inc"

.subckt nand2_sch in1 in2 out Vdd Gnd


M1 Out In1 Vdd Vdd PMOS_VTL L=50n W=1.6u
M2 Out In2 Vdd Vdd PMOS_VTL L=50n W=1.6u
M3 Out In1 m3sm4d Gnd NMOS_VTL L=50n W=3.2u
M4 m3sm4d In2 Gnd Gnd NMOS_VTL L=50n W=3.2u

.ends


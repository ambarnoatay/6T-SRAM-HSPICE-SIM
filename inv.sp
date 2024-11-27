.INCLUDE "NMOS_VTL.inc"
.INCLUDE "PMOS_VTL.inc"

.subckt inv_sch Vin Vout Vdd Gnd 

M1 Vout Vin Vdd Vdd PMOS_VTL L=50n W=200n
M2 Vout Vin Gnd Gnd NMOS_VTL L=50n W=100n

.ends



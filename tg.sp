.INCLUDE "NMOS_VTL.inc"
.INCLUDE "PMOS_VTL.inc"

.subckt tg_sch S S_bar Vin Vout Vdd Gnd

M1 Vin S_bar Vout Vdd PMOS_VTL L=50n W=800n
M2 Vin S Vout Gnd NMOS_VTL L=50n W=400n

.ends


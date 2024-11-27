.INCLUDE "NMOS_VTL.inc"
.INCLUDE "PMOS_VTL.inc"


.subckt sram_cell_sch BL BLB Gnd Vdd WL


M1 Q QB 0 0 NMOS_VTL L=50n W=300n
M2 QB Q 0 0 NMOS_VTL L=50n W=300n
M5 Q QB Vdd Vdd PMOS_VTL L=50n W=160n
M6 QB Q Vdd Vdd PMOS_VTL L=50n W=160n
M3 Q WL BL 0 NMOS_VTL L=50n W=200n
M4 QB WL BLB 0 NMOS_VTL L=50n W=200n

.ends



.INCLUDE "NMOS_VTL.inc"
.INCLUDE "PMOS_VTL.inc"

.subckt precharge_sch BL BLB Pre_En Vdd 


M1 BLB Pre_En Vdd Vdd PMOS_VTL L=50n W=450n
M2 BL Pre_En Vdd Vdd PMOS_VTL L=50n W=450n
M3 BLB Pre_En BL Vdd PMOS_VTL L=50n W=450n


.ends


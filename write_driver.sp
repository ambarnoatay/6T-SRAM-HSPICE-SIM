.INCLUDE "NMOS_VTL.inc"
.INCLUDE "PMOS_VTL.inc"

.subckt write_driver_sch BL BLB Write_En Write_Data Vdd Gnd 

TG1 Write_En Write_En_bar xtest1 BLB Vdd Gnd tg_sch
TG2 Write_En_bar Write_En Write_Data BL Vdd Gnd tg_sch

INV1 Write_Data xtest1 Vdd Gnd inv_sch
INV2 Write_En Write_En_bar Vdd Gnd inv_sch


.ends






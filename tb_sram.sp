.INCLUDE "NMOS_VTL.inc"
.INCLUDE "PMOS_VTL.inc"


.INCLUDE "sram_cell.sp"
.INCLUDE "write_driver.sp"
.INCLUDE "precharge.sp"
.INCLUDE "sense_amp.sp"









.TEMP 25.0

.OPTION
+ ARTIST=2
+ INGOLD=2
+ PARHIER=LOCAL
+ PSF=2
+ HIER_DELIM=0


.param supply=0.8

VVdd Vdd 0 supply
VVSS Gnd 0 0

X1 BL BLB Gnd Vdd WL sram_cell_sch
X2 BL BLB Write_En Write_Data Vdd Gnd write_driver_sch
X3 BL BLB Pre_En Vdd precharge_sch
X4 BL BLB Sense_En Out OutB Vdd Gnd sense_amp_sch

Vpulse_1 WL 0 PULSE(0.8V 0V 0 0.01ns 0.01ns 0.5ns 1.02ns)
Vpulse_2 Pre_En 0 PULSE(0.8V 0V 0 0.01ns 0.01ns 0.5ns 1.02ns)
Vpulse_3 Write_Data 0 PWL(0 0 2ns 0 2.01ns 0.8V 4ns 0.8V 4.01ns 0V)
Vpulse_4 Sense_En 0 PULSE(0.8V 0V 0 0.01ns 0.01ns 0.5ns 1.02ns)
Vpulse_5 Write_En 0 PULSE(0.8V 0V 0 0.01ns 0.01ns 1.5ns 2ns)

.PROBE TRAN
+ V(BL)
+ V(BLB)
+ V(WL)
+ V(Write_Data)
+ V(Write_En)
+ V(Sense_En)
+ V(Pre_En)
.TRAN 0 50n 10p
.END 



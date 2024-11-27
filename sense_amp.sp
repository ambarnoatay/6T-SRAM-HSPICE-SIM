.INCLUDE "NMOS_VTL.inc"
.INCLUDE "PMOS_VTL.inc"

.INCLUDE "nand2.sp"

.subckt sense_amp_sch BL BLB Sense_En Out OutB Vdd Gnd

N1 O1 OutB Out Vdd Gnd nand2_sch
N2 Out O2 OutB Vdd Gnd nand2_sch
M1 O1 Sense_En Vdd Vdd PMOS_VTL L=45n W=240n
M2 O2 Sense_En Vdd Vdd PMOS_VTL L=45n W=240n
M3 O1 O2 Vdd Vdd PMOS_VTL L=45n W=100n
M4 O2 O1 Vdd Vdd PMOS_VTL L=45n W=100n
M5 O1 O2 m5sm7d Gnd NMOS_VTL L=45n W=200n
M6 O2 O1 m6sm8d Gnd NMOS_VTL L=45n W=200n
M7 m5sm7d BL m7sm9d Gnd NMOS_VTL L=45n W=200n
M8 m6sm8d BLB m7sm9d Gnd NMOS_VTL L=45n W=200n
M9 m7sm9d Sense_En Gnd Gnd NMOS_VTL L=45n W=100n

.ends



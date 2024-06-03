## Clock signal
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { sysclk }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { Clock }];

## Switches (connected to PMOD JA)
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { Switches[0] }]; #IO_L21P_T3_DQS_AD14P_35 Sch=JA1_R_p
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { Switches[1] }]; #IO_L22P_T3_AD7P_35 Sch=JA2_R_P
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { Switches[2] }]; #IO_L24P_T3_AD15P_35 Sch=JA3_R_P
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { Switches[3] }]; #IO_L20P_T3_AD6P_35 Sch=JA4_R_P
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { Switches[4] }]; #IO_L19N_T3_VREF_35 Sch=sw[0]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { Switches[5] }]; #IO_L24P_T3_34 Sch=sw[1]
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { Switches[6] }]; #IO_L4N_T0_34 Sch=sw[2]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { Switches[7] }]; #IO_L9P_T1_DQS_34 Sch=sw[3]

## Button
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { Button }]; #IO_L12N_T1_MRCC_35 Sch=btn[0]

## Seven-Segment Display (connected to PMOD JE and JD)
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { Display[0] }]; #IO_L5P_T0_34 Sch=jd_p[1]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { Display[1] }]; #IO_L5N_T0_34 Sch=jd_n[1]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { Display[2] }]; #IO_L6P_T0_34 Sch=jd_p[2]
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { Display[3] }]; #IO_L6N_T0_VREF_34 Sch=jd_n[2]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { Display[4] }]; #IO_L9N_T1_DQS_34 Sch=je[4]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { Display[5] }]; #IO_L4P_T0_34 Sch=je[1]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { Display[6] }]; #IO_L18N_T2_34 Sch=je[2]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { Display[7] }];   #IO_25_35 Sch=je[3]

## Skip Signal
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { Skip }];  #IO_L3N_T0_DQS_34

�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:082	
576.8162	
239.168Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
G:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/MMP/ADCFinal/Adc3/testADC3.srcs/utils_1/imports/synth_1/design_1_wrapper.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2W
UC:/Users/MMP/ADCFinal/Adc3/testADC3.srcs/utils_1/imports/synth_1/design_1_wrapper.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
k
Command: %s
53*	vivadotcl2:
8synth_design -top design_1_wrapper -part xc7z010clg400-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z010Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z010Z17-349h px� 
D
Loading part %s157*device2
xc7z010clg400-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7z010clg400-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
1028Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1455.562 ; gain = 448.469
h px� 
�
synthesizing module '%s'638*oasys2
design_1_wrapper2Z
VC:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2
498@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

design_12R
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
24522

design_1_i2

design_12Z
VC:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2
848@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

design_12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
24908@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
design_1_RestoringDivision_0_02�
�C:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_RestoringDivision_0_0_stub.vhdl2
62
RestoringDivision_02 
design_1_RestoringDivision_0_02T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
30818@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
design_1_RestoringDivision_0_02�
�C:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_RestoringDivision_0_0_stub.vhdl2
208@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_axi_gpio_1_12|
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_1_1_stub.vhdl2
62
axi_gpio_dividend2
design_1_axi_gpio_1_12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
30928@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_axi_gpio_1_12~
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_1_1_stub.vhdl2
328@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_axi_gpio_0_22|
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_2_stub.vhdl2
62
axi_gpio_divisor2
design_1_axi_gpio_0_22T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
31158@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_axi_gpio_0_22~
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_2_stub.vhdl2
328@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_axi_gpio_1_02|
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_1_0_stub.vhdl2
62
axi_gpio_gata2
design_1_axi_gpio_1_02T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
31388@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_axi_gpio_1_02~
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_1_0_stub.vhdl2
328@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_axi_gpio_0_32|
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_3_stub.vhdl2
62
axi_gpio_quotient2
design_1_axi_gpio_0_32T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
31618@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_axi_gpio_0_32~
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_3_stub.vhdl2
328@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_axi_gpio_0_42|
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_4_stub.vhdl2
62
axi_gpio_remainder2
design_1_axi_gpio_0_42T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
31848@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_axi_gpio_0_42~
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_4_stub.vhdl2
328@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_axi_gpio_0_02|
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_0_stub.vhdl2
62
axi_gpio_resetare2
design_1_axi_gpio_0_02T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
32078@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_axi_gpio_0_02~
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_0_stub.vhdl2
328@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_axi_gpio_0_12|
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_1_stub.vhdl2
62
axi_gpio_start2
design_1_axi_gpio_0_12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
32308@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_axi_gpio_0_12~
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_axi_gpio_0_1_stub.vhdl2
328@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
design_1_processing_system7_0_02�
�C:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_processing_system7_0_0_stub.vhdl2
62
processing_system7_02!
design_1_processing_system7_0_02T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
32538@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
design_1_processing_system7_0_02�
�C:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_processing_system7_0_0_stub.vhdl2
818@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
design_1_ps7_0_axi_periph_02T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
13388@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
m00_couplers_imp_15SPJYW2T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
588@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m00_couplers_imp_15SPJYW2
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
588@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
m01_couplers_imp_XU9C552T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
1598@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m01_couplers_imp_XU9C552
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
1598@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
m02_couplers_imp_14WQB4R2T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
2608@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m02_couplers_imp_14WQB4R2
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
2608@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
m03_couplers_imp_YFYJ3U2T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
3618@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m03_couplers_imp_YFYJ3U2
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
3618@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
m04_couplers_imp_17KQ7322T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
4628@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m04_couplers_imp_17KQ7322
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
4628@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
m05_couplers_imp_VQEDA72T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
5638@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m05_couplers_imp_VQEDA72
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
5638@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
m06_couplers_imp_16EQN6L2T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
6648@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m06_couplers_imp_16EQN6L2
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
6648@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
m07_couplers_imp_X61OAK2T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
7658@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
m07_couplers_imp_X61OAK2
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
7658@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
s00_couplers_imp_UYSKKA2T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
8898@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_auto_pc_02y
wC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_auto_pc_0_stub.vhdl2
62	
auto_pc2
design_1_auto_pc_02T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
10728@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_auto_pc_02{
wC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_auto_pc_0_stub.vhdl2
718@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
s00_couplers_imp_UYSKKA2
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
8898@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_xbar_02v
tC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_xbar_0_stub.vhdl2
62
xbar2
design_1_xbar_02T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
22858@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_xbar_02x
tC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_xbar_0_stub.vhdl2
528@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
design_1_ps7_0_axi_periph_02
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
13388@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_rst_ps7_0_50M_02
}C:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_rst_ps7_0_50M_0_stub.vhdl2
62
rst_ps7_0_50M2
design_1_rst_ps7_0_50M_02T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
35228@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_rst_ps7_0_50M_02�
}C:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_rst_ps7_0_50M_0_stub.vhdl2
228@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
design_1_xadc_wiz_0_02|
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_xadc_wiz_0_0_stub.vhdl2
62

xadc_wiz_02
design_1_xadc_wiz_0_02T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
35358@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
design_1_xadc_wiz_0_02~
zC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/.Xil/Vivado-2736-DESKTOP-46511SM/realtime/design_1_xadc_wiz_0_0_stub.vhdl2
598@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

design_12
02
12T
Pc:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/synth/design_1.vhd2
24908@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
design_1_wrapper2
02
12Z
VC:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd2
498@Z8-256h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s00_couplers_imp_UYSKKAZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s00_couplers_imp_UYSKKAZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m07_couplers_imp_X61OAKZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m07_couplers_imp_X61OAKZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m07_couplers_imp_X61OAKZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m07_couplers_imp_X61OAKZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m06_couplers_imp_16EQN6LZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m06_couplers_imp_16EQN6LZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m06_couplers_imp_16EQN6LZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m06_couplers_imp_16EQN6LZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m05_couplers_imp_VQEDA7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m05_couplers_imp_VQEDA7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m05_couplers_imp_VQEDA7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m05_couplers_imp_VQEDA7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m04_couplers_imp_17KQ732Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m04_couplers_imp_17KQ732Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m04_couplers_imp_17KQ732Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m04_couplers_imp_17KQ732Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m03_couplers_imp_YFYJ3UZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m03_couplers_imp_YFYJ3UZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m03_couplers_imp_YFYJ3UZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m03_couplers_imp_YFYJ3UZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m02_couplers_imp_14WQB4RZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m02_couplers_imp_14WQB4RZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m02_couplers_imp_14WQB4RZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m02_couplers_imp_14WQB4RZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m01_couplers_imp_XU9C55Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m01_couplers_imp_XU9C55Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m01_couplers_imp_XU9C55Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m01_couplers_imp_XU9C55Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m00_couplers_imp_15SPJYWZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m00_couplers_imp_15SPJYWZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m00_couplers_imp_15SPJYWZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m00_couplers_imp_15SPJYWZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M00_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M01_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M02_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M03_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M03_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M04_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M04_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M05_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M05_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M06_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M06_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M07_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M07_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S00_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1578.469 ; gain = 571.375
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1578.469 ; gain = 571.375
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1578.469 ; gain = 571.375
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0372

1578.4692
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc2#
design_1_i/processing_system7_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc2#
design_1_i/processing_system7_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_in_context.xdc2
design_1_i/xadc_wiz_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0_in_context.xdc2
design_1_i/xadc_wiz_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2$
 design_1_i/ps7_0_axi_periph/xbar	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2$
 design_1_i/ps7_0_axi_periph/xbar	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc24
0design_1_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc24
0design_1_i/ps7_0_axi_periph/s00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_rst_ps7_0_50M_0/design_1_rst_ps7_0_50M_0/design_1_rst_ps7_0_50M_0_in_context.xdc2
design_1_i/rst_ps7_0_50M	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_rst_ps7_0_50M_0/design_1_rst_ps7_0_50M_0/design_1_rst_ps7_0_50M_0_in_context.xdc2
design_1_i/rst_ps7_0_50M	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_RestoringDivision_0_0/design_1_RestoringDivision_0_0/design_1_RestoringDivision_0_0_in_context.xdc2"
design_1_i/RestoringDivision_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_RestoringDivision_0_0/design_1_RestoringDivision_0_0/design_1_RestoringDivision_0_0_in_context.xdc2"
design_1_i/RestoringDivision_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0/design_1_axi_gpio_0_1_in_context.xdc2 
design_1_i/axi_gpio_resetare	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0/design_1_axi_gpio_0_1_in_context.xdc2 
design_1_i/axi_gpio_resetare	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0_in_context.xdc2
design_1_i/axi_gpio_gata	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0_in_context.xdc2
design_1_i/axi_gpio_gata	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_in_context.xdc2
design_1_i/axi_gpio_start	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_in_context.xdc2
design_1_i/axi_gpio_start	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_1_1/design_1_axi_gpio_1_1/design_1_axi_gpio_0_2_in_context.xdc2 
design_1_i/axi_gpio_dividend	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_1_1/design_1_axi_gpio_1_1/design_1_axi_gpio_0_2_in_context.xdc2 
design_1_i/axi_gpio_dividend	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2_in_context.xdc2
design_1_i/axi_gpio_divisor	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2_in_context.xdc2
design_1_i/axi_gpio_divisor	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_3/design_1_axi_gpio_0_3/design_1_axi_gpio_0_3_in_context.xdc2 
design_1_i/axi_gpio_quotient	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_3/design_1_axi_gpio_0_3/design_1_axi_gpio_0_3_in_context.xdc2 
design_1_i/axi_gpio_quotient	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4_in_context.xdc2!
design_1_i/axi_gpio_remainder	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4_in_context.xdc2!
design_1_i/axi_gpio_remainder	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2C
?C:/Users/MMP/ADCFinal/Adc3/testADC3.srcs/constrs_1/new/zybo.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2C
?C:/Users/MMP/ADCFinal/Adc3/testADC3.srcs/constrs_1/new/zybo.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2A
?C:/Users/MMP/ADCFinal/Adc3/testADC3.srcs/constrs_1/new/zybo.xdc2$
".Xil/design_1_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2C
?C:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2C
?C:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1587.1452
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0062

1587.1452
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z010clg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M00_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M01_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M02_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M03_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M03_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M04_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M04_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M05_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M05_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M06_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M06_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M07_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M07_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S00_ACLK2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2
design_1_ps7_0_axi_periph_0Z8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
O
%s
*synth27
5+------+--------------------------------+----------+
h p
x
� 
O
%s
*synth27
5|      |BlackBox name                   |Instances |
h p
x
� 
O
%s
*synth27
5+------+--------------------------------+----------+
h p
x
� 
O
%s
*synth27
5|1     |design_1_xbar_0                 |         1|
h p
x
� 
O
%s
*synth27
5|2     |design_1_auto_pc_0              |         1|
h p
x
� 
O
%s
*synth27
5|3     |design_1_RestoringDivision_0_0  |         1|
h p
x
� 
O
%s
*synth27
5|4     |design_1_axi_gpio_1_1           |         1|
h p
x
� 
O
%s
*synth27
5|5     |design_1_axi_gpio_0_2           |         1|
h p
x
� 
O
%s
*synth27
5|6     |design_1_axi_gpio_1_0           |         1|
h p
x
� 
O
%s
*synth27
5|7     |design_1_axi_gpio_0_3           |         1|
h p
x
� 
O
%s
*synth27
5|8     |design_1_axi_gpio_0_4           |         1|
h p
x
� 
O
%s
*synth27
5|9     |design_1_axi_gpio_0_0           |         1|
h p
x
� 
O
%s
*synth27
5|10    |design_1_axi_gpio_0_1           |         1|
h p
x
� 
O
%s
*synth27
5|11    |design_1_processing_system7_0_0 |         1|
h p
x
� 
O
%s
*synth27
5|12    |design_1_rst_ps7_0_50M_0        |         1|
h p
x
� 
O
%s
*synth27
5|13    |design_1_xadc_wiz_0_0           |         1|
h p
x
� 
O
%s
*synth27
5+------+--------------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
P
%s*synth28
6+------+-------------------------------------+------+
h px� 
P
%s*synth28
6|      |Cell                                 |Count |
h px� 
P
%s*synth28
6+------+-------------------------------------+------+
h px� 
P
%s*synth28
6|1     |design_1_RestoringDivision_0_0_bbox  |     1|
h px� 
P
%s*synth28
6|2     |design_1_auto_pc_0_bbox              |     1|
h px� 
P
%s*synth28
6|3     |design_1_axi_gpio_0_0_bbox           |     1|
h px� 
P
%s*synth28
6|4     |design_1_axi_gpio_0_1_bbox           |     1|
h px� 
P
%s*synth28
6|5     |design_1_axi_gpio_0_2_bbox           |     1|
h px� 
P
%s*synth28
6|6     |design_1_axi_gpio_0_3_bbox           |     1|
h px� 
P
%s*synth28
6|7     |design_1_axi_gpio_0_4_bbox           |     1|
h px� 
P
%s*synth28
6|8     |design_1_axi_gpio_1_0_bbox           |     1|
h px� 
P
%s*synth28
6|9     |design_1_axi_gpio_1_1_bbox           |     1|
h px� 
P
%s*synth28
6|10    |design_1_processing_system7_0_0_bbox |     1|
h px� 
P
%s*synth28
6|11    |design_1_rst_ps7_0_50M_0_bbox        |     1|
h px� 
P
%s*synth28
6|12    |design_1_xadc_wiz_0_0_bbox           |     1|
h px� 
P
%s*synth28
6|13    |design_1_xbar_0_bbox                 |     1|
h px� 
P
%s*synth28
6|14    |IBUF                                 |     8|
h px� 
P
%s*synth28
6+------+-------------------------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1587.145 ; gain = 580.051
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 19 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:25 . Memory (MB): peak = 1587.145 ; gain = 571.375
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1587.145 ; gain = 580.051
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0232

1587.1452
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1587.1452
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

ec45e4f6Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
742
712
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:312

00:00:332

1587.1452	
981.410Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

1587.1452
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2G
EC:/Users/MMP/ADCFinal/Adc3/testADC3.runs/synth_1/design_1_wrapper.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2k
ireport_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Oct 18 12:21:17 2024Z17-206h px� 


End Record
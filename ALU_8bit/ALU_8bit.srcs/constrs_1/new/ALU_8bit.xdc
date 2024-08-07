set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports clk]
# Display Constraints
set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS33} [get_ports {D1_a[0]}]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports {D1_a[1]}]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {D1_a[2]}]
set_property -dict {PACKAGE_PIN E4 IOSTANDARD LVCMOS33} [get_ports {D1_a[3]}]
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports {LED_out[0]}]
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports {LED_out[1]}]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33} [get_ports {LED_out[2]}]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports {LED_out[3]}]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports {LED_out[4]}]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports {LED_out[5]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS33} [get_ports {LED_out[6]}]
set_property -dict {PACKAGE_PIN C1 IOSTANDARD LVCMOS33} [get_ports {LED_out[7]}]

# [7:0]A,B;
# [2:0]s;
# clk,xin,reset

#Input Constraints


set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports {A[0]}]  
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports {A[1]}]  
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33} [get_ports {A[2]}]  
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS33} [get_ports {A[3]}]  
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports {A[4]}]  
set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS33} [get_ports {A[5]}]  
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports {A[6]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports {A[7]}]
set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS33} [get_ports {B[0]}]  
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33} [get_ports {B[1]}]  
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports {B[2]}]  
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports {B[3]}]  
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports {B[4]}]  
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {B[5]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {B[6]}]
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {B[7]}]
  
#s[2:0]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports {s[0]}]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports {s[1]}]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports {s[2]}]
# reset
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports reset]
#To see the mclk 
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports mclk]
set_property PACKAGE_PIN AL8 [get_ports clk_p]  ;# Прямой сигнал
set_property PACKAGE_PIN AL7 [get_ports clk_n]  ;# Инверсный сигнал
set_property IOSTANDARD DIFF_SSTL12 [get_ports {clk_p clk_n}]
create_clock -period 5.000 -name sys_clk [get_ports clk_p]

set_property PACKAGE_PIN AG14 [get_ports {led[0]}]
set_property PACKAGE_PIN AF13 [get_ports {led[1]}]
set_property PACKAGE_PIN AE13 [get_ports {led[2]}]
set_property PACKAGE_PIN AJ14 [get_ports {led[3]}]
set_property PACKAGE_PIN AJ15 [get_ports {led[4]}]
set_property PACKAGE_PIN AH13 [get_ports {led[5]}]
set_property PACKAGE_PIN AH14 [get_ports {led[6]}]
set_property PACKAGE_PIN AL12 [get_ports {led[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN AG13 [get_ports sw_btn]
set_property IOSTANDARD LVCMOS33 [get_ports sw_btn]

set_property PACKAGE_PIN AE14 [get_ports right_btn]
set_property IOSTANDARD LVCMOS33 [get_ports right_btn]

set_property PACKAGE_PIN AF15 [get_ports left_btn]
set_property IOSTANDARD LVCMOS33 [get_ports left_btn]

set_property PACKAGE_PIN AE15 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

#set_property PACKAGE_PIN AP14 [get_ports {sw[0]}]
#set_property PACKAGE_PIN AM14 [get_ports {sw[1]}]
#set_property PACKAGE_PIN AN13 [get_ports {sw[2]}]
#set_property PACKAGE_PIN AN12 [get_ports {sw[3]}]
#set_property PACKAGE_PIN AP12 [get_ports {sw[4]}]
#set_property PACKAGE_PIN AL13 [get_ports {sw[5]}]
#set_property PACKAGE_PIN AK13 [get_ports {sw[6]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
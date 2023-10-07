set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]

set_property PACKAGE_PIN AG14 [get_ports {led[0]}]
set_property PACKAGE_PIN AF13 [get_ports {led[1]}]
set_property PACKAGE_PIN AE13 [get_ports {led[2]}]
set_property PACKAGE_PIN AJ14 [get_ports {led[3]}]
set_property PACKAGE_PIN AJ15 [get_ports {led[4]}]
set_property PACKAGE_PIN AH13 [get_ports {led[5]}]
set_property PACKAGE_PIN AH14 [get_ports {led[6]}]
set_property PACKAGE_PIN AL12 [get_ports {led[7]}]

set_property PACKAGE_PIN E13 [get_ports UART_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_rxd]
set_property PACKAGE_PIN F13 [get_ports UART_txd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_txd]

# enable tx by forcing 0 from design. sfp0,1,2,3 => a12, a13, b13, c13
set_property PACKAGE_PIN A12 [get_ports sfp_tx_dis_1]
set_property IOSTANDARD LVCMOS33 [get_ports sfp_tx_dis_1]

# sfp0
set_property PACKAGE_PIN D2 [get_ports gt_serial_port_grx_p]
set_property PACKAGE_PIN E4 [get_ports gt_serial_port_gtx_p]

# USER_MGT_SI570_CLOCK2_C_P
set_property PACKAGE_PIN C8 [get_ports gt_ref_clk_clk_p]

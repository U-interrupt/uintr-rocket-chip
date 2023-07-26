################## Compress Bitstream ############################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property IOSTANDARD LVCMOS33 [get_ports {led}]

set_property PACKAGE_PIN AM13 [get_ports {led}]

#set_property PACKAGE_PIN D11 [get_ports UART_rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports UART_rxd]
set_property PACKAGE_PIN D10 [get_ports UART_txd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_txd]


set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_clk_p]
set_property PACKAGE_PIN AL8 [get_ports sys_clk_clk_p]
set_property PACKAGE_PIN AL7 [get_ports sys_clk_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_clk_n]
create_clock -period 5.000 -name sys_clk_clk_p -waveform {0.000 2.500} [get_ports sys_clk_clk_p]

set_property PACKAGE_PIN M10  [get_ports {mdio_mdc                    }] 
set_property PACKAGE_PIN L10  [get_ports {mdio_mdio_io            }] 
set_property PACKAGE_PIN R9	 [get_ports {phy_reset_n                  }] 
set_property PACKAGE_PIN AA7  [get_ports {rgmii_rxc                  }] 
set_property PACKAGE_PIN AA6  [get_ports {rgmii_rx_ctl            }] 
set_property PACKAGE_PIN U4	 [get_ports {rgmii_rd[0]              }] 
set_property PACKAGE_PIN U5	 [get_ports {rgmii_rd[1]              }] 
set_property PACKAGE_PIN Y9	 [get_ports {rgmii_rd[2]              }] 
set_property PACKAGE_PIN Y10 [get_ports {rgmii_rd[3]              }] 
set_property PACKAGE_PIN V3	 [get_ports {rgmii_txc                  }] 
set_property PACKAGE_PIN V4	 [get_ports {rgmii_tx_ctl            }] 
set_property PACKAGE_PIN AC9 [get_ports {rgmii_td[0]              }] 
set_property PACKAGE_PIN AB9 [get_ports {rgmii_td[1]              }] 
set_property PACKAGE_PIN AB5 [get_ports {rgmii_td[2]              }] 
set_property PACKAGE_PIN AB6  [get_ports {rgmii_td[3]              }] 
 
set_property IOSTANDARD LVCMOS18 [get_ports {mdio_mdc                    }] 
set_property IOSTANDARD LVCMOS18 [get_ports {mdio_mdio_io            }] 
set_property IOSTANDARD LVCMOS18 [get_ports {phy_reset_n                  }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rxc                  }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rx_ctl            }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[0]              }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[1]              }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[2]              }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rd[3]              }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_txc                  }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_tx_ctl            }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[0]              }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[1]              }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[2]              }] 
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_td[3]              }] 

set_property UNAVAILABLE_DURING_CALIBRATION TRUE [get_ports mdio_mdio_io]


#idelay
set_property DELAY_VALUE 500 [get_cells system/axi_eth_dma/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/delay_rgmii_rx_ctl]
set_property DELAY_VALUE 500 [get_cells {system/axi_eth_dma/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[0].delay_rgmii_rxd}]
set_property DELAY_VALUE 500 [get_cells {system/axi_eth_dma/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[1].delay_rgmii_rxd}]
set_property DELAY_VALUE 500 [get_cells {system/axi_eth_dma/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[2].delay_rgmii_rxd}]
set_property DELAY_VALUE 500 [get_cells {system/axi_eth_dma/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[3].delay_rgmii_rxd}]



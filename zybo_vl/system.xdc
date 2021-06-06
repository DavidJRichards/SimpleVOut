# djrm ebaz4205 version

#########################################################
# Clock (125 MHz)                                       #
#########################################################

set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports {clk}]
#125 MHz
#create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]
# 32MHz
#create_clock -period 31.25 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]
# 33.3 MHz
create_clock -period 30.0 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]


#########################################################
# Zybo Switches/Buttons/LEDs                            #
#########################################################

# pmod switch
#set_property PACKAGE_PIN G15 [get_ports {sw[0]}]
set_property PACKAGE_PIN E19 [get_ports {sw[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]

# pmod switch
#set_property PACKAGE_PIN P15 [get_ports {sw[1]}]
set_property PACKAGE_PIN H18 [get_ports {sw[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]

# pmod switch
#set_property PACKAGE_PIN W13 [get_ports {sw[2]}]
set_property PACKAGE_PIN D18 [get_ports {sw[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]

# pmod switch
#set_property PACKAGE_PIN T16 [get_ports {sw[3]}]
set_property PACKAGE_PIN K17 [get_ports {sw[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]

# set_property PACKAGE_PIN R18 [get_ports {btn[0]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {btn[0]}]

# set_property PACKAGE_PIN P16 [get_ports {btn[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {btn[1]}]

set_property PACKAGE_PIN V16 [get_ports {btn[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[2]}]

set_property PACKAGE_PIN Y16 [get_ports {btn[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[3]}]

# Blue LED
#set_property PACKAGE_PIN M14 [get_ports {led[0]}]
#set_property PACKAGE_PIN A20 [get_ports {led[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

# Red LED
#set_property PACKAGE_PIN M15 [get_ports {led[1]}]
set_property PACKAGE_PIN W14 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

# Green LED
#set_property PACKAGE_PIN G14 [get_ports {led[2]}]
set_property PACKAGE_PIN W13 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

#pmod LED
#set_property PACKAGE_PIN D18 [get_ports {led[3]}]
set_property PACKAGE_PIN B19 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]


#########################################################
# External Gamepad
#########################################################

#set_property PACKAGE_PIN V20 [get_ports {btn[0]}]
set_property PACKAGE_PIN V13 [get_ports {btn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[0]}]

#set_property PACKAGE_PIN W20 [get_ports {btn[1]}]
set_property PACKAGE_PIN U12 [get_ports {btn[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[1]}]


#########################################################
# TMDS (DVI, HDMI)                                      #
#########################################################
# Connector DATA 1
set_property -dict {PACKAGE_PIN H17 IOSTANDARD TMDS_33} [get_ports {tmds_clk_n}]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD TMDS_33} [get_ports {tmds_clk_p}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD TMDS_33} [get_ports {tmds_d_n[0]}]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD TMDS_33} [get_ports {tmds_d_p[0]}]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD TMDS_33} [get_ports {tmds_d_n[1]}]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD TMDS_33} [get_ports {tmds_d_p[1]}]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD TMDS_33} [get_ports {tmds_d_n[2]}]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD TMDS_33} [get_ports {tmds_d_p[2]}]


#########################################################
# OpenLDI (aka LVDS)                                    #
#########################################################
# Connector DATA 2
set_property -dict {PACKAGE_PIN H20 IOSTANDARD TMDS_33} [get_ports {openldi_clk_n}]
set_property -dict {PACKAGE_PIN J20 IOSTANDARD TMDS_33} [get_ports {openldi_clk_p}]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD TMDS_33} [get_ports {openldi_a_n[0]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD TMDS_33} [get_ports {openldi_a_p[0]}]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD TMDS_33} [get_ports {openldi_a_n[1]}]
set_property -dict {PACKAGE_PIN K19 IOSTANDARD TMDS_33} [get_ports {openldi_a_p[1]}]
set_property -dict {PACKAGE_PIN L17 IOSTANDARD TMDS_33} [get_ports {openldi_a_n[2]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD TMDS_33} [get_ports {openldi_a_p[2]}]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD TMDS_33} [get_ports {openldi_a_p[3]}]
set_property -dict {PACKAGE_PIN G19 IOSTANDARD TMDS_33} [get_ports {openldi_a_p[3]}]

#########################################################
# VGA                                                   #
#########################################################
# ADV7123
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {vga_clk}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {vga_hs}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {vga_vs}]
#set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports {vga_blank}] # real pin
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {vga_blank}]
#------------------------------------------------------
#set_property PACKAGE_PIN J19 [get_ports {vga_r[0]}]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {vga_r[0]}]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {vga_r[1]}]
#set_property PACKAGE_PIN K19 [get_ports {vga_r[2]}]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports {vga_r[2]}]
#set_property PACKAGE_PIN J20 [get_ports {vga_r[3]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {vga_r[3]}]
#set_property PACKAGE_PIN L16 [get_ports {vga_r[4]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {vga_r[4]}]
#------------------------------------------------------
#set_property PACKAGE_PIN L20 [get_ports {vga_g[0]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {vga_g[0]}]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {vga_g[1]}]
#set_property PACKAGE_PIN L17 [get_ports {vga_g[2]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {vga_g[2]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {vga_g[3]}]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {vga_g[4]}]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {vga_g[5]}]
#------------------------------------------------------
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {vga_b[0]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {vga_b[1]}]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {vga_b[2]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {vga_b[3]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {vga_b[4]}]



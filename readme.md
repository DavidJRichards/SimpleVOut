# Simple Video Out

## Method to create bitstream for inclusion in Vitis project

### edit system.tcl
change from
```create_project -part xc7z010clg400-2 -in_memory```
to
```create_project -part xc7z010clg400-2 -name system```

Select desired screen resolution at head of system.tcl

### create project
open Vivado and source the system.tcl file

```cd ~/Documents/GitHub/djrm-EBAZ4205/projects/SimpleVOut/zybo_bd/
source ./system.tcl```

### edit block design

Apply ebaz4205 preset to PS7 
Set input frequency to 33.333MHz
Change property of clk_wiz PLLE2 Settings from ZHOLD to INTERNAL ? why
add 100 MHz fabric clock FCLK_CLK3


delete external clk input 
re-route external clk to FCLK_CLK3
save new block design ^S

## update constraints
Apply pin definitions to suit availabe hardware


### Synthesize design and make bitstream
Manually generate bitstream
export hardware and bitstream to system.xsa


## Steps to create application in Vitis

Create new platform project in Vitis, import newly created system.xsa
Cretae new bare metal application and choose hello world template
import firmware.c and delete main.c
build application and use jtag programmer to test

# vivado_ip

cd ~/Documents/GitHub/djrm-EBAZ4205/projects/SimpleVOut/vivado_ip
source ./build.tcl

# djrm_bd

```
3 June 2021
djrm, ebaz4205
djrm, modified for 800x600 LVDC TFT Panel
67.21109765

cd ~/Documents/GitHub/djrm-EBAZ4205/projects/SimpleVOut/djrm_bd
set argv "synth"
source ./system.tcl
```
set argv "synth"; cd ~/Documents/GitHub/djrm-EBAZ4205/projects/SimpleVOut/djrm_bd; source ./system.tcl



# display_bd

cretae new vivado project using ebaz4205 part
create block design, add zynq7
run block automation with board preset applied
cd ~/Documents/GitHub/djrm-EBAZ4205/projects/SimpleVOut/djrm_bd; source ./display.tcl
create wrapper and set it as top module

# axiplayer

cd ~/Documents/GitHub/djrm-EBAZ4205/projects/SimpleVOut/vivado_ip; source ./djrm_test.tcl

source ./build.tcl
source ./testbench.tcl
source ./djrm_test.tcl

# github axiplayer
cd ~/Documents/GitHub/djrm-EBAZ4205/projects/SimpleVOut/vivado_ip; source ./djrm_test.tcl


source simplehdmi.tcl
source axiplayer.tcl

source ./testbench.tcl
note, change:
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0
to become:
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0

# zybo_vl
cd ~/Documents/GitHub/djrm-EBAZ4205/projects/SimpleVOut/zybo_vl;source ./system.tcl


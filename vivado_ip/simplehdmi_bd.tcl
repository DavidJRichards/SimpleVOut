proc post_config_ip {cellpath otherInfo} {
	set ip [get_bd_cells $cellpath]

	set mode [get_property CONFIG.SVO_MODE $ip]
	set framerate [get_property CONFIG.SVO_FRAMERATE $ip]

	send_msg {SIMPLEHDMI-1} {INFO} "Mode: $mode"
	send_msg {SIMPLEHDMI-1} {INFO} "Framerate: $framerate Hz"

	set full_w 0
	set full_h 0

	proc mode {m w h hfp hsyn hbp vfp vsyn vbp} {
		upvar 1 mode mode
		if {$mode == $m} then {
			upvar 1 full_w full_w
			upvar 1 full_h full_h
			set full_w [expr {$w+$hfp+$hsyn+$hbp}] 
			set full_h [expr {$h+$vfp+$vsyn+$vbp}] 
		}
	}

	#      MODE         W     H  HFP HSYN  HBP  VFP VSYN  VBP
	mode 320x200      320   200   16   24   40    3    6    3
	mode 320x240      320   240   16   24   40    3    4    5
	mode 352x288      352   288    8   32   40    3   10    3
	mode 384x288      384   288   16   32   48    3    4    6
	mode 480x320      480   320   16   40   56    3   10    3
	mode 640x480      640   480   24   56   80    3    4   13
	mode 768x576      768   576   32   72  104    3    4   16
	mode 768x576      768   576   32   72  104    3    4   16
	mode 800x480      800   480   24   72   96    3   10    7
	mode 800x600      800   600   32   80  112    3    4   17
	mode 854x480      854   480   24   80  104    3   10    7
	mode 1024x576    1024   576   40   96  136    3    5   15
	mode 1024x600    1024   600   48   96  144    3   10   11
	mode 1024x768    1024   768   48  104  152    3    4   23
	mode 1152x768    1152   768   64  112  176    3   10   17
	mode 1152x864    1152   864   64  120  184    3    4   26
	mode 1280x1024   1280  1024   88  128  216    3    7   29
	mode 1280x720    1280   720   64  128  192    3    5   20
	mode 1280x768    1280   768   64  128  192    3   10   17
	mode 1280x800    1280   800   72  128  200    3    6   22
	mode 1280x854    1280   854   72  128  200    3   10   20
	mode 1280x960    1280   960   80  128  208    3    4   29
	mode 1366x768    1366   768   72  136  208    3   10   17
	mode 1400x1050   1400  1050   88  144  232    3    4   32
	mode 1440x1080   1440  1080   88  152  240    3    4   33
	mode 1440x900    1440   900   88  144  232    3    6   25
	mode 1440x960    1440   960   88  144  232    3   10   23
	mode 1600x1200   1600  1200  112  168  280    3    4   38
	mode 1600x900    1600   900   96  160  256    3    5   26
	mode 1680x1050   1680  1050  104  176  280    3    6   30
	mode 1920x1080   1920  1080  128  200  328    3    5   32
	mode 1920x1200   1920  1200  136  200  336    3    6   36
	mode 2048x1080   2048  1080  128  216  344    3   10   27
	mode 2048x1536   2048  1536  160  216  376    3    4   49
	mode 2560x1080   2560  1080  160  272  432    3   10   27
	mode 2560x1440   2560  1440  192  272  464    3    5   45
	mode 2560x1600   2560  1600  200  272  472    3    6   49
	mode 2560x2048   2560  2048  208  280  488    3    7   63
	mode 3840x2160   3840  2160  320  416  736    3    5   69
	mode 4096x2160   4096  2160  336  448  784    3   10   64
	mode 320x200R     320   200   48   32   80    3    6    6
	mode 320x240R     320   240   48   32   80    3    4    6
	mode 352x288R     352   288   48   32   80    3   10    6
	mode 384x288R     384   288   48   32   80    3    4    6
	mode 480x320R     480   320   48   32   80    3   10    6
	mode 640x480R     640   480   48   32   80    3    4    7
	mode 768x576R     768   576   48   32   80    3    4   10
	mode 768x576R     768   576   48   32   80    3    4   10
	mode 800x480R     800   480   48   32   80    3   10    6
	mode 800x600R     800   600   48   32   80    3    4   11
	mode 854x480R     854   480   48   32   80    3   10    6
	mode 1024x576R   1024   576   48   32   80    3    5    9
	mode 1024x600R   1024   600   48   32   80    3   10    6
	mode 1024x768R   1024   768   48   32   80    3    4   15
	mode 1152x768R   1152   768   48   32   80    3   10    9
	mode 1152x864R   1152   864   48   32   80    3    4   18
	mode 1280x1024R  1280  1024   48   32   80    3    7   20
	mode 1280x720R   1280   720   48   32   80    3    5   13
	mode 1280x768R   1280   768   48   32   80    3   10    9
	mode 1280x800R   1280   800   48   32   80    3    6   14
	mode 1280x854R   1280   854   48   32   80    3   10   12
	mode 1280x960R   1280   960   48   32   80    3    4   21
	mode 1366x768R   1366   768   48   32   80    3   10    9
	mode 1400x1050R  1400  1050   48   32   80    3    4   23
	mode 1440x1080R  1440  1080   48   32   80    3    4   24
	mode 1440x900R   1440   900   48   32   80    3    6   17
	mode 1440x960R   1440   960   48   32   80    3   10   15
	mode 1600x1200R  1600  1200   48   32   80    3    4   28
	mode 1600x900R   1600   900   48   32   80    3    5   18
	mode 1680x1050R  1680  1050   48   32   80    3    6   21
	mode 1920x1080R  1920  1080   48   32   80    3    5   23
	mode 1920x1200R  1920  1200   48   32   80    3    6   26
	mode 2048x1080R  2048  1080   48   32   80    3   10   18
	mode 2048x1536R  2048  1536   48   32   80    3    4   37
	mode 2560x1080R  2560  1080   48   32   80    3   10   18
	mode 2560x1440R  2560  1440   48   32   80    3    5   33
	mode 2560x1600R  2560  1600   48   32   80    3    6   37
	mode 2560x2048R  2560  2048   48   32   80    3    7   49
	mode 3840x2160R  3840  2160   48   32   80    3    5   54
	mode 4096x2160R  4096  2160   48   32   80    3   10   49
	mode 64x48T        64    48    2    4    2    1    2    1

	send_msg {SIMPLEHDMI-1} {INFO} "Horizontal resolution incl. blanking: $full_w"
	send_msg {SIMPLEHDMI-1} {INFO} "Vertical resolution incl. blanking: $full_h"

	set clk_pixel_hz_ [expr {$full_w * $full_h * $framerate}]
	# set clk_pixel_hz [expr {(($clk_pixel_hz_ + 125000) /  250000) *  250000}]
	set  clk_pixel_hz [expr {(($clk_pixel_hz_ + 500000) / 1000000) * 1000000}]
	set clk_5x_pixel_hz [expr {5 * $clk_pixel_hz}]
	set clk_7x_pixel_hz [expr {7 * $clk_pixel_hz}]

	send_msg {SIMPLEHDMI-1} {INFO} "Resulting pixel clock: $clk_pixel_hz_ Hz "
   # send_msg {SIMPLEHDMI-1} {INFO} "Resulting pixel clock: $clk_pixel_hz Hz (rounded to 0.25 MHz)"
	send_msg {SIMPLEHDMI-1} {INFO} "Resulting pixel clock: $clk_pixel_hz Hz (rounded to 1.0 MHz)"
	send_msg {SIMPLEHDMI-1} {INFO} "Resulting tmds ddr 5x clock: $clk_5x_pixel_hz Hz"
	send_msg {SIMPLEHDMI-1} {INFO} "Resulting tmds ddr 7x clock: $clk_7x_pixel_hz Hz"

	set_property CONFIG.FREQ_HZ $clk_pixel_hz [get_bd_pins $ip/clk_pixel]
	set_property CONFIG.FREQ_HZ $clk_5x_pixel_hz [get_bd_pins $ip/clk_5x_pixel]
	set_property CONFIG.FREQ_HZ $clk_7x_pixel_hz [get_bd_pins $ip/clk_7x_pixel]
}

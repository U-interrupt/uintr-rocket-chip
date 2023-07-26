BOARD = axu15eg
PART = xczu15eg-ffvb1156-2-i

include ../common/Makefrag

gen_bin:
	cd proj && xsct ../dt_overaly.tcl system_wrapper.xsa psu_cortexa53_0 /opt/device-tree-xlnx/ overlay
	cd proj && dtc -O dtb -o pl.dtbo -b 0 -@ overlay/pl.dtsi
	cp bitstream.bif ./proj/ && cd proj && bootgen -image bitstream.bif -arch zynqmp -o ./system_wrapper.bit.bin -w

upload:
	scp proj/system_wrapper.bit.bin proj/pl.dtbo root@192.168.1.2:~
	
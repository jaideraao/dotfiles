set mem inaccessible-by-default off
target extended-remote /dev/cu.usbmodem7BAE9BAB1
monitor swdp_scan
attach 1
tui enable

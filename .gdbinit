set mem inaccessible-by-default off
# set history save
set verbose off
set print pretty on
set print array off
set print array-indexes on
# set python print-stack full

# tui enable
target extended-remote /dev/cu.usbmodem7BAE9BAB1
monitor swdp_scan
attach 1

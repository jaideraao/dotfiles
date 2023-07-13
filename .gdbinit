set mem inaccessible-by-default off
target extended-remote /dev/cu.usbmodem7BAE9BAB1
monitor swdp_scan
attach 1
# tui enable

set history save
set verbose off
set print pretty on
set print array off
set print array-indexes on
set python print-stack full

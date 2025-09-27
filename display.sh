#!/bin/bash

# Main monitor: 2560x1440 at 180 Hz
xrandr --output DP-4 --primary --mode 2560x1440 --rate 180 --pos 0x925 --rotate normal \
       --output HDMI-0 --mode 2560x1440 --pos 2560x0 --rotate left

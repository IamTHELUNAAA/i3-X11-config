#!/bin/bash

# Main monitor: 2560x1440, left/top
xrandr --output DP-4 --primary --mode 2560x1440 --pos 0x0 --rotate normal \

--rate 180

# Second monitor: 1440x2560, portrait, right of main
       --output HDMI-0 --mode 1440x2560 --pos 2560x0 --rotate normal
# Rotate second monitor
xrandr --output HDMI-0 --rotate left

# moving main screen
xrandr --output DP-4 --rotate normal --pos 0x925
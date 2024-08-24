#!/bin/sh
CPU=$(cat /sys/class/thermal/thermal_zone3/temp)
TEMP=$((CPU / 1000))
echo $TEMP

#!/bin/bash

i3status -c ~/.i3/i3status.conf | while :
do
    read line
    #layout=$(xkb-switch)
    brightness=$(xbacklight -get | awk '{split($0,a,"."); print a[1]}')
    #echo "  $layout |  ${brightness}% | $line" || exit 1
    echo " ${brightness}% | $line" || exit 1
done

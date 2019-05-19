#!/bin/env bash

#######################
# Anne Summers       ##
# ukulanne@gmail.com ##
# May 19, 2019       ##
#######################

displays=$(xrandr | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")

if [ "$1" != "" ]; then
    for d in "${displays[@]}"
    do
        xrandr --output $d --brightness $1    
    done
else
    echo "Usage: ./screen-adjust.sh 1.0"
    echo "Displays found: $displays"
    echo "Copyright 2019 - Anne Summers -<ukulanne@gmail.com>"
    echo "License LGPLv3+: GNU LGPL 3 or later <http://gnu.org/licenses/lgpl.html>."
    echo "This is free software: you are free to change and redistribute it."
    echo "There is NO WARRANTY, to the extent permitted by law."
fi





#!/bin/env bash

#######################
# Anne Summers       ##
# ukulanne@gmail.com ##
# OCtober 15, 2019   ##
#######################

if [ "$1" != "" ]; then
    cf target -s $1
else
    echo "Usage: cf-switch-space.sh space"
    echo "Switchs to cf space"
    echo "Copyright 2019 - Anne Summers -<ukulanne@gmail.com>"
    echo "License LGPLv3+: GNU LGPL 3 or later <http://gnu.org/licenses/lgpl.html>."
    echo "This is free software: you are free to change and redistribute it."
    echo "There is NO WARRANTY, to the extent permitted by law."
fi

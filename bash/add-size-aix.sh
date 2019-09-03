#!/bin/env bash

#######################
# Anne Summers       ##
# ukulanne@gmail.com ##
# September 3, 2019  ##
#######################

size=""
location=""

help_info (){
    echo "Usage: add-size-aix.sh -s size -l location"
    echo "Usage: add-size-aix.sh --size size --location location"
    echo "Copyright 2019"
    echo "License LGPLv3+: GNU LGPL 3 or later <http://gnu.org/licenses/lgpl.html>."
    echo "This is free software: you are free to change and redistribute it."
    echo "There is NO WARRANTY, to the extent permitted by law."
}

while [ "$1" != "" ]; do
    case $1 in
        -s | --size )           shift
                                size=$1
                                ;;
        -l | --location )       shift
                                location=$1
                                
                                ;;
        -h | --help )           help_info
                                exit
                                ;;
        * )                     help_info
                                exit 1
                                ;;
    esac
    shift
done


if [ "$size"  != "" ] && [ "$location" != "" ]; then
    chfs -a size="$size"M $location
else
      echo "Missing arguments"
     
      help_info
      exit 1
fi

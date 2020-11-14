#!/bin/bash
#title           : dmenu_polybarfix
#description     : Fix polybar if it doesn't launch
#author          : Samuel Reddy
#date            : 2020116
#notes           : Install dmenu to use this script. For the best experience create a hotkey

actions=("Kill-Polybar\nLaunch-Polybar")
action=$(echo -e $actions | dmenu -p "Fix Polybar: " -h 30 -bw 5 -c -l 10)
case "$action" in        
    Kill-Polybar)
        killall -q polybar
        ;;

    Launch-Polybar)
       $HOME/.config/polybar/launch.sh
        ;;

esac

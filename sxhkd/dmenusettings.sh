#!/bin/sh
#title           : dmenu_settings
#description     : A simple dmenu settings manager for window managers
#author          : Samuel Reddy
#date            : 2020116
#notes           : Install dmenu to use this script. For the best experience create a hotkey

actions=("Appearance\nPrinting\nSound\nDisks\nBackground\nNetwork")
action=$(echo -e $actions | dmenu -p "Settings: " -h 30 -bw 5 -c -l 10)
case "$action" in        
    Appearance)
        lxappearance
        ;;

    Printing)
       system-config-printer
        
        ;;

    Sound)
        pavucontrol
        ;;
    Disks)
        gparted
        ;;
    Background)
        nitrogen
        ;;
    Network)
        nm-connection-editor

esac

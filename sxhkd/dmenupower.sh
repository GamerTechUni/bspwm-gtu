#!/bin/bash
#title           : dmenu_shutdown
#description     : A simple dmenu call to logout, hibernate, shutdown, sleep, or restart 
#author      : Arne Küderle
#date            : 201602
#notes           : Install dmenu to use this script. For the best experience create a hotkey

actions=("Shutdown\nRestart\nSuspend\nHibernate\nLogout")
action=$(echo -e $actions | dmenu -p "Power Options: " -h 30 -bw 5 -c -l 15)
case "$action" in
    Shutdown)
        loginctl poweroff
        ;;
        
    Restart)
        loginctl reboot
        ;;

    Suspend)
        i3lock-fancy && loginctl suspend
        ;;
    Hibernate)
        i3lock-fancy && loginctl hibernate
        ;;

    Logout)
        bspc quit
        ;;

esac

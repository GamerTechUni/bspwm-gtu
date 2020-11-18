#!/bin/sh
#title           : dmenu_shutdown
#description     : A simple dmenu call to logout, hibernate, shutdown, sleep, or restart 
#author      : Arne Küderle
#date            : 201602
#notes           : Install dmenu to use this script. For the best experience create a hotkey

actions=("Shutdown\nRestart\nSuspend\nHibernate\nLogout")
action=$(echo -e $actions | dmenu -p "Power Options: " -h 30 -bw 5 -c -l 15)
case "$action" in
    Shutdown)
        systemctl poweroff
        ;;
        
    Restart)
        systemctl reboot
        ;;

    Suspend)
        i3lock-fancy && systemctl suspend
        ;;
    Hibernate)
        i3lock-fancy && systemctl hibernate
        ;;

    Logout)
        bspc quit
        ;;

esac

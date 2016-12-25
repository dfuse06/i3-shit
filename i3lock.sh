#!/bin/sh

lock() {
    i3lock
}

case "$1" in
    lock)
         # Take a screenshot
        scrot ~/Pictures/screen_locked.png
        convert ~/Pictures/screen_locked.png -blur 0x5 ~/Pictures/screen_locked.png
        i3lock -i ~/Pictures/screen_locked.png 
        rm ~/Pictures/screen_locked.png
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        # Take a screenshot
        scrot ~/Pictures/screen_locked.png
        convert ~/Pictures/screen_locked.png -blur 0x5 ~/Pictures/screen_locked.png
        i3lock -i ~/Pictures/screen_locked.png 
        rm ~/Pictures/screen_locked.png
        systemctl suspend
        ;;
    hibernate)
        # Take a screenshot
        scrot ~/Pictures/screen_locked.png
        convert ~/Pictures/screen_locked.png -blur 0x5 ~/Pictures/screen_locked.png
        i3lock -i ~/Pictures/screen_locked.png 
        rm ~/Pictures/screen_locked.png
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
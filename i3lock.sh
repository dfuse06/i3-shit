#!/bin/sh

# Take a screenshot
scrot ~/Pictures/screen_locked.png

convert ~/Pictures/screen_locked.png -blur 0x5 ~/Pictures/screen_locked.png
i3lock -i ~/Pictures/screen_locked.png
#rm ~/Pictures/screen_locked.png

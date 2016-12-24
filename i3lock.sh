#!/bin/sh

# Take a screenshot
scrot ~/Pictures/screen_locked.png

convert ~/Pictures/screen_locked.png -spread 6 ~/Pictures/screen_locked.png
rm /tmp/screenshot.png
i3lock -i ~/Pictures/screen_locked.png

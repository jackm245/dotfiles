#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# if [ -d /etc/X11/xinit/xinitrc.d ]; then
#   for f in /etc/X11/xinit/xinitrc.d/*; do
#     [ -x "$f" ] && . "$f"
#   done
#   unset f
# fi

setxkbmap gb

autorandr docked

# feh --bg-scale --randomize /usr/share/backgrounds/*

slstatus &

# nm-applet &
# volumeicon &

# setxkbmap -option altwin:swap_alt_win
setxkbmap -option caps:swapescape &
# picom --experimental-backend -b

exec dwm

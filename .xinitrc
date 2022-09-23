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
sudo xbacklight 100
setxkbmap gb
xsetroot -solid "#0c0e15"

# autorandr docked
autorandr undocked

# feh --bg-scale --randomize /usr/share/backgrounds/*
# feh --bg-scale ~/Downloads/moon-wallpaper.png
slstatus &

# nm-applet &
# volumeicon &

setxkbmap -option altwin:swap_alt_win
# setxkbmap -option caps:swapescape &
picom --experimental-backend -b
eww daemon &
# pavucontrol &
exec dwm

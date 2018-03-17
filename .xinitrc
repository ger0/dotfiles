#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi
[ -f /etc/xprofile ]&& . /etc/xprofile
[ -f ~/.xprofile ] && . ~/xprofile

xrandr --newmode "1920x1080@71" 164.9586 1920 1968 2000 2080 1080 1083 1088 1117 +hsync -vsync
xrandr --addmode DVI-I-1 "1920x1080@71"
xrandr --output DVI-I-1 "1920x1080@71"
exec i3

#!/bin/sh

# this file is run when calling startx

# default arch init scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
fi

# user init scripts and settings
[ -r /etc/X11/xinit/.Xmodmap ] && xmodmap /etc/X11/xinit/.Xmodmap
[ -r ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -r ~/.Xresources ] && xrdb -merge ~/.Xresources
[ -r ~/.xprofile ] && . ~/.xprofile

# launch the session, commands below this line will be ignored
xbacklight -set 70 &
xbindkeys &
xgamma -gamma 1.3 &
redshift -P -O 3725 &
feh --bg-scale ~/.bg.png &
unclutter -idle 1 -jitter 1 -root &
setxkbmap -option compose:prsc -option caps:hyper & 
xset r rate 250 50
#setxkbmap -option compose:prsc -option ctrl:nocaps &

#jackd -R -d alsa -d hw:PCH&
#setxkbmap -option ctrl:nocaps &
#ping -i 5 google.fr | grep -o 'time=[0-9].[0-9][0-9]' > ~/.ping &
#xautolock -time 5 -locker "systemctl suspend" &
#st &
#autistici &
#Left &
#youtube & 
#dwmblocks &
#discord --start-minimized &
telegram-desktop -startintray &
#blueman-applet &
slock &
#exec dwm
exec i3


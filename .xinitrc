#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    /usr/bin/xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    /usr/bin/xmodmap $sysmodmap
fi

if [ -f $userresources ]; then
    /usr/bin/xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    /usr/bin/xmodmap $usermodmap
fi

# start some nice programs

export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$HOME/bin:$HOME/script:$PATH"
upower.sh&
xbacklight -set 30
(compton&$HOME/.fehbg)
xbattmon&
datedzen.sh&
unclutter -root -not Minecraft -idle 5&
#tint2&
#$HOME/.fehbg&
#exec /usr/bin/ewm
#exec bspwm
#exec fvwm
exec vtwm

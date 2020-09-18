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

export PATH="$HOME/bin:$HOME/script:/usr/local/bin:$PATH"
export QT_QPA_PLATFORMTHEME=qt5ct
#$HOME/.fehbg&
#tint2& 
#tint2 -c $HOME/.config/tint2/tint2rcright&
#xclock -geometry 64x64-0+0
#picom&
#upower.sh&
#unclutter -root -no Minecraft -idle 5&
#xbacklight -set 30&
#exec bspwm
#exec ctwm
#exec ewm
exec fvwm

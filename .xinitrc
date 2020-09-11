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

export PATH="$HOME/bin:$HOME/script:$PATH"
export QT_STYLE_OVERRIDE=kvantum
#upower.sh&
xbacklight -set 30
#datedzen.sh&
unclutter -root -not Minecraft -idle 5&
#playingdzen.sh&
#xbattmon&
#tint2&
$HOME/.fehbg&
#xbindkeys&
lemonbar.sh&
picom&
#exec icewm-session
exec bspwm
#exec ewm

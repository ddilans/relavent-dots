#!/bin/sh
id="`xinput list | dmenu -l 10 | sed 's:.*id=::;s:\t.*$::'`"
state="`xinput list-props $id | grep 'Device Enabled' | awk '{ print $4; }'`" #This could be made faster by doing it all in awk, but as it stands I dont know any awk

if [ "$state" -eq 1 ]; then
xinput --disable $id 
else
xinput --enable $id
fi

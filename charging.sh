#!/bin/sh
value="`cat /sys/class/power_supply/AC0/online`"
if [ "$value" = "1" ]; then
echo "+";
else
echo "-";
fi

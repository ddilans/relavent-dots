#!/bin/sh
echo $(($(sed -n "s:POWER_SUPPLY_ENERGY_NOW=::p" /sys/class/power_supply/BAT0/uevent)00/$(sed -n "s:POWER_SUPPLY_ENERGY_FULL=::p" /sys/class/power_supply/BAT0/uevent))) | tr -d "-" | tr -d '\n'

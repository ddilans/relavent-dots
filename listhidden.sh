#!/bin/sh
nodes="`bspc query -N -n any.local.hidden | wc -l`"
if [ "$nodes" != "0" ]; then
echo -n "$nodes"
fi

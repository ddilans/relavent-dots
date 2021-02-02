#!/bin/sh
while true; do
echo -n "%{r}$(bat.sh)%$(charging.sh) "
echo -n "%{c}$(ram.sh)"
echo "%{l}%{A1:mpc toggle:}%{A3:mpc next:}$(mpc current)%{A}%{A} $(mpc | awk 'NR == 2 { print $3; }')"
sleep 1;
done | lemonbar -g $1 -u 0 -B "#31363b" -F "#eff0f1" -f 'Misc Fixed:style=SemiCondensed:pixelsize=13:lang=ru'  -f 'aquafont:pixelsize=13' | sh
#done | lemonbar -g 1881x16+22+1064 -u 0 -B "#31363b" -F "#eff0f1" -f 'Misc Fixed:style=SemiCondensed:pixelsize=13:lang=ru'  -f 'aquafont:pixelsize=13' | sh

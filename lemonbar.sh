#!/bin/sh
while true; do
echo -n "%{l}$(bat.sh)%$(charging.sh) "
echo -n "%{c} $(date +%R) $(listhidden.sh)"
echo "%{r}%{A1:mpc toggle:}%{A3:mpc next:}$(mpc current)%{A}%{A}"
sleep 2;
done | lemonbar -g 1881x16+1941+0 -u 0 -B "#31363b" -F "#eff0f1" -f 'Misc Fixed:style=SemiCondensed:pixelsize=13:lang=ru'  -f 'aquafont:pixelsize=13' | sh
#done | lemonbar -g 1920x16+0+0 -u 0 -B "#31363b" -F "#eff0f1" -f 'Misc Fixed:style=SemiCondensed:pixelsize=13:lang=ru'  -f 'aquafont:pixelsize=13' | sh

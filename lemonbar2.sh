#!/bin/bash
#bash script as to use two redirections without a named pipe
while true; do
echo -n "%{r}$(bat.sh)%$(charging.sh)%{O3}" || exit 1
echo -n "%{c}$(ram.sh)"
echo "%{l}%{O3}%{A1:mpc toggle:}%{A3:mpc next:}$(mpc current)%{A}%{A} $(mpc | awk 'NR == 2 { print $3; }')"
sleep 1;
done | tee >(lemonbar -g 1920x16+0+1064 -u 0 -B "#31363b" -F "#eff0f1" -f 'Cozette:style=Medium'  -f 'aquafont:pixelsize=13' | sh) | lemonbar -g 1920x16+1920+1064 -u 0 -B "#31363b" -F "#eff0f1" -f 'Cozette:style=Medium'  -f 'aquafont:pixelsize=13' | sh

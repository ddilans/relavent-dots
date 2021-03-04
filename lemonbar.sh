#!/bin/bash
#bash script as to use two redirections without a named pipe
while true; do
echo -n "%{l}%{O3}$(xtitle)" || exit 1
echo -n "%{c}$(bspc query -D -d .focused --names) $(bspc query -D -d .occupied --names | tr '\n' , | head -c-1) $(listhidden.sh)"
echo "%{r}$(date +'%a %d/%m/%y %R'), $(TZ='Europe/Berlin' date +%R), $(TZ='Europe/Riga' date +%R)%{O3}"
sleep 1;
done | tee >(lemonbar -g 1920x16+0+0 -u 0 -B "#31363b" -F "#eff0f1" -f 'Cozette:style=Medium'  -f 'aquafont:pixelsize=13' | sh) | lemonbar -g 1920x16+1920+0 -u 0 -B "#31363b" -F "#eff0f1" -f 'Cozette:style=Medium'  -f 'aquafont:pixelsize=13' | sh

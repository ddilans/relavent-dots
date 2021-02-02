#!/bin/sh
while true; do
echo -n "%{l}$(xtitle)"
echo -n "%{c}$(bspc query -D -d .focused --names) $(bspc query -D -d .occupied --names | tr '\n' , | head -c-1) $(listhidden.sh)"
echo "%{r}$(date +'%a %d/%m/%y %R'), $(TZ='Europe/Berlin' date +%R), $(TZ='Europe/Riga' date +%R)"
sleep 1;
done | lemonbar -g $1 -u 0 -B "#31363b" -F "#eff0f1" -f 'Misc Fixed:style=SemiCondensed:pixelsize=13:lang=ru'  -f 'aquafont:pixelsize=13' | sh
#done | lemonbar -g 1881x16+22+0 -u 0 -B "#31363b" -F "#eff0f1" -f 'Misc Fixed:style=SemiCondensed:pixelsize=13:lang=ru'  -f 'aquafont:pixelsize=13' | sh

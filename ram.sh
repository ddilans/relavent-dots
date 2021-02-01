#!/bin/sh
free --si -mh | awk 'NR==2{printf "%s/%s", $3, $2 }'

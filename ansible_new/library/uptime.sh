#!/bin/bash

if [ -f "/proc/uptime" ]; then
   uptime=$(</proc/uptime)
   uptime=${uptime%%.*}
   days=$(( uptime/60/60/24 ))
   hours=$(( uptime/60/60%24 ))
   minutes=$(( uptime/60%60 ))
   seconds=$(( uptime%60 ))
   uptime="$days days, $hours hours, $minutes minutes,$seconds seconds"
else
   uptime=""
fi
   echo -e "{\"uptime\":\""$uptime"\"}"


#!/usr/bin/bash

while true; do
  CPU_USAGE=$(top -bn1 | grep 'Cpu(s)' | awk '{print $8}' | cut -f1 -d".")
  if ((100 - CPU_USAGE >= 80)); then
    notify-send "WARNING!" "CPU USAGE IS ABOVE 80!"
  fi
  sleep 10
done

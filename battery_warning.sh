#!/usr/bin/bash
while true; do
  battery=$(acpi -b | grep -oP '\d+(?=%)')
  if (($battery <= 20)); then
    notify-send "Warning!" "The battery percentage is below 20!"
  fi
  sleep 60
done

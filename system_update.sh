#!/usr/bin/bash

update=$(checkupdates | wc -l)
if (($update >= 100)); then
  notify-send "SYSTEM NEEDS UPDATE!" $update -i /home/freakiestone/Downloads/warning.png
fi

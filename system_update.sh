#!/usr/bin/bash

update=$(checkupdates | wc -l)
notify-send $update

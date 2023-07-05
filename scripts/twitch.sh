#!/bin/bash

twitch-dmenu | dmenu -c -fn "MesloLGS Nerd Font Mono:size=12" -nb "#222222" -nf "#bbbbbb" -sb "#005577" -sf "#eeeeee" -bw 4 -l 100 | awk '{print $1}' | xargs -I{} streamlink twitch.tv/{} best --player mpv

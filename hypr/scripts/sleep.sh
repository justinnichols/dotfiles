#!/bin/sh
swayidle -w \
                timeout 300 'temp=$(brightnessctl g); brightnessctl set $((temp / 2))' \
                    resume 'temp=$(brightnessctl g); brightnessctl set $((temp * 2))' \
                timeout 330 'swaylock -f' \
                timeout 360 'hyprctl dispatch dpms off' \
                    resume 'hyprctl dispatch dpms on' \
                lock 'swaylock -f'
#swayidle -w \
#                timeout 300 'temp=$(brightnessctl g); brightnessctl set $((temp / 2))' \
#                    resume 'temp=$(brightnessctl g); brightnessctl set $((temp * 2))' \
#                timeout 360 "$HOME/.config/hypr/scripts/lock.sh & sleep 1 && hyprctl dispatch dpms off" \
#                    resume 'hyprctl dispatch dpms on'\
#                timeout 10 'if pgrep swaylock; then hyprctl dispatch dpms off; fi'\
#                    resume 'hyprctl dispatch dpms on'\
#                lock '~/.config/hypr/scripts/lock.sh'

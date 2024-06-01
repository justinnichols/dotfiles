#!/bin/sh
if pgrep swaylock; then hyprctl dispatch dpms off; fi

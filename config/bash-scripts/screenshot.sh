#!/usr/bin/env bash
DIR="$HOME/Bilder/Screenshots"
mkdir -p "$DIR"
FILE="$DIR/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png"

if [[ "$1" == "select" ]]; then
    grim -g "$(slurp)" "$FILE"
else
    grim "$FILE"
fi

wl-copy < "$FILE"
notify-send "Screenshot gespeichert" "$FILE"

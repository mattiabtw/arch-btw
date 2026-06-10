#!/bin/bash

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"
FILE="$DIR/Screenshot_$(date +%Y%m%d_%H%M%S).png"

if [ "$1" = "area" ]; then
    # slurp returns 1 if selection is cancelled
    GEOM=$(slurp) || exit 1
    grim -g "$GEOM" "$FILE"
else
    grim "$FILE"
fi

if [ -f "$FILE" ]; then
    wl-copy < "$FILE"
    # Using notify-send (swaync) with the image itself as the icon
    notify-send "Screenshot Captured" "Saved and copied to clipboard" -i "$FILE" -a "Screenshot"
fi

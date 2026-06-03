#!/bin/bash

# Get the current gaps_out value. 
# In Hyprland, this typically returns "custom type: 0 0 0 0" when gaps are off.
if hyprctl getoption general:gaps_out | grep -q "0 0 0 0"; then
    # Gaps are currently 0, so set them to the desired values
    hyprctl keyword general:gaps_in 3
    hyprctl keyword general:gaps_out 5
else
    # Gaps are currently on, so turn them off
    hyprctl keyword general:gaps_in 0
    hyprctl keyword general:gaps_out 0
fi

#!/bin/bash

"$(printf "Super + / = Show keybinds\nSuper + Return = Open Terminal\nSuper + C = close window\nSuper + Shift +  F = Fullscreen\nSuper + T = Screenshot of Region\nSuper + Y = Screenshot of screen\nSuper + E = Open FileManager\nSuper + Shift + Q = exit\nSuper + V = floating\nSuper + D = menu\nSuper + W = Waypaper\nSuper + Shift + D = clipboard history\nSuper + Shift + Return = 2nd Terminal\nSuper + Shift + W = clear clipboard\nSuper + R = reload waybar\nSuper + G = toggle gaps\nSuper + L = wlogout" | fuzzel --dmenu --prompt "Keybinds: " --lines 17 --width 40)" 

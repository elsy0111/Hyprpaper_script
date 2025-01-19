#!/bin/bash

# =========== U can change Here!! ============
directory=~/Pictures/wall
# ============================================

monitors=$(hyprctl monitors | grep Monitor | awk '{print $2}')

# if receive argument, then show usage as help
if [[ $# -gt 0 ]]; then
    echo "Usage: $(basename "$0")"
    echo
    echo "A script to set wallpapers for multiple monitors using Hyprland."
    echo
    echo "Options:"
    echo "  <no arguments>   Run the script to set wallpapers interactively."
    echo
    echo "Description:"
    echo "  This script allows you to set wallpapers for all monitors detected by Hyprland."
    echo "  Wallpapers are chosen interactively from the specified directory."
    echo "  Press 'q' during the selection process to exit the script."
    echo
    echo "Note:"
    echo "  Wallpapers should be located in the '~/Pictures/wall' directory by default."
    exit 0
fi

echo "press 'q'. If you want to exit"
if [ -d "$directory" ]; then
    # Unload all wallpaper
    hyprctl hyprpaper unload all >/dev/null 2>&1
    
    # obtain all wallpaper in Pictures dir (defined above)
    wallpapers=("$directory"/*)

    # set wallpaper each monitor
    select wallpaper in "${wallpapers[@]}"; do
        if [[ "$REPLY" == "q" ]] ;then
            echo "Exiting..."
            exit 0
        fi
        if [ -n "$wallpaper" ]; then
            for monitor in $monitors; do
                echo "Selected wallpaper: $wallpaper for $monitor"
                
                # set wallpaper
                hyprctl hyprpaper preload "$wallpaper" >/dev/null 2>&1
                hyprctl hyprpaper wallpaper "$monitor, $wallpaper" >/dev/null 2>&1
            done
        else
            echo "Invalid selection. Try again. (quit : 'q')"
        fi
    done
else
    echo "Directory $directory does not exist. Please check the path."
fi

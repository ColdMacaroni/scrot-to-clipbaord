#!/bin/sh
# Takes a screen cap and sends it to clipboard

# I cannot put the variable in scrot for some reason
# so i guess just make sure both paths are the same?
# giblib error: Saving to file ~/Pictures/Screenshots/screencap.png failed
file_path=~/Pictures/Screenshots
scrot ~/Pictures/Screenshots/%Y-%m-%d.%H%M.png

# Get latest file
# This is done because i'm not allowed to use a variable for the scrot
# destination
filename="$(ls -tA $file_path/*.png | head -n1)"

# Copy
xclip -selection clipboard -t image/png -i < $filename

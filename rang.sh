#!/bin/sh

# variables
bordercolor="#303030"
border=5

grim -g "$(slurp -p)" - > /tmp/pixel.png
hexcode=$(magick /tmp/pixel.png -colors 1 txt: | awk 'NR==2 {print $3}')
magick convert /tmp/pixel.png -filter point -resize 96x96 -bordercolor $bordercolor -border $border /tmp/big-pixel.png
notify-send -i /tmp/big-pixel.png "  rang" "The hex code is $hexcode"
wl-copy -n $hexcode
rm -f /tmp/pixel.png /tmp/big-pixel.png

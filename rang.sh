#!/bin/sh

# variables
bordercolor="#303030"
border=5
image="/tmp/image.png"
icon="/tmp/icon.png"

grim -g "$(slurp -p)" - > $image
hexcode=$(magick $image -colors 1 txt: | awk 'NR==2 {print $3}')
magick convert $image -filter point -resize 96x96 -bordercolor $bordercolor -border $border $icon
notify-send -i $icon "  rang" "The hex code is $hexcode"
wl-copy -n $hexcode
rm -f $image $icon

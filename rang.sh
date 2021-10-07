#!/bin/sh

grim -g "$(slurp -p)" - > /tmp/pixel.png
hexcode=$(magick /tmp/pixel.png -colors 1 txt: | tail -n 1 | awk '{print $3}')
magick convert /tmp/pixel.png -filter point -resize 96x96 -bordercolor '#303030' -border 5 /tmp/big-pixel.png
notify-send -i /tmp/big-pixel.png "  rang" "The hex code is $hexcode"
echo $hexcode | wl-copy -n
rm -f /tmp/pixel.png /tmp/big-pixel.png

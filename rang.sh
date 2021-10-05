#!/bin/sh

grim -g "$(slurp -p)" - > /tmp/pixel.png
magick /tmp/pixel.png -colors 1 txt: | tail -n 1 | awk '{print $3}' > /tmp/hex
magick convert /tmp/pixel.png -filter point -resize 96x96 /tmp/big-pixel.png
notify-send -i /tmp/big-pixel.png "rang" "The hex code is $(cat /tmp/hex)"
wl-copy -n < /tmp/hex
rm -f /tmp/pixel.png /tmp/big-pixel.png /tmp/hex

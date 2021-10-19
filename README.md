# rang

A color picker for wayland

<p align="center">
  <img src="screenshot.png">
</p>

`rang` is a simple color picker script that I use on my system. It relies upon the following to do its thing:
- [slurp](https://github.com/emersion/slurp) to pick the spot on your screen
- [grim](https://github.com/emersion/grim) to generate an image of that pixel
- [imagemagick](https://imagemagick.org/index.php) to extract the color code
- [wl-copy](https://github.com/bugaevc/wl-clipboard) to copy the color code to the clipboard
- notify-send to generate a notification

DISCLAIMER: The script is for my personal use and I figured it could serve as a base for anyone interested in building something more portable or configurable. It doesn't even test for the dependencies so make sure you already have them installed before you use this. I welcome to any PRs or advice to make this more portable or configurable.

## Installation
Just move `rang.sh` to anywhere on your `$PATH` and launch it by binding it to a key or create a `.desktop` file and launch it using your preferred launcher.

## Usage
Launching `rang` launches grim with slurp to pick any spot on your screen and then prints a fancy notification while also copying the hex code to the clipboard.

## Credits
- Inspired by [Manas](https://github.com/Manas140)'s [pluck](https://github.com/Manas140/pluck)

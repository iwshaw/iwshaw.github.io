#!/usr/bin/env bash


# fetch a new wallpaper
wget -q http://iwshaw.github.io/updates/wallpaper.png -O /usr/share/backgrounds/wallpaper.png

# switch wallpapers
dconf write /org/mate/desktop/background/picture-filename "'/usr/share/backgrounds/wallpaper.png'"

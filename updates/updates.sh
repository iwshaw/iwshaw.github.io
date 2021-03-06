#!/usr/bin/env bash

NEW_WALLPAPER_LOCATION=/usr/share/backgrounds/wallpaper.png

# send the update message
notify-send -i /usr/share/icons/mate/256x256/status/software-update-urgent.png -t 4500 "Updating Cyber Quest Hacker Mode"

# fetch a new wallpaper
sudo wget -q http://iwshaw.github.io/updates/wallpaper.png -O $NEW_WALLPAPER_LOCATION

# give it a moment to download
sleep 5

# set wallpaper rendering
# options: wallpaper zoom centered scaled stretched spanned
dconf write /org/mate/desktop/background/picture-options "'centered'"

# set the background colour
dconf write /org/mate/desktop/background/primary-color "'rgb(0,0,0)'"

# change the wallpaper image
dconf write /org/mate/desktop/background/picture-filename "'$NEW_WALLPAPER_LOCATION'"

# change the gtk theme
dconf write /org/mate/desktop/interface/gtk-theme "'Adwaita-dark'"

# change the icon theme
dconf write /org/mate/desktop/interface/icon-theme "'maia'"

# change the window border theme
dconf write /org/mate/marco/general/theme "'Blue-Submarine'"

# send the all done message
notify-send -i /usr/share/icons/mate/256x256/emotes/face-laugh.png -t 3000 "Thank you for your co-operation!"

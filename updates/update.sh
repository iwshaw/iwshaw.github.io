#!/usr/bin/env bash

# send the update message
notify-send -i /usr/share/icons/mate/256x256/status/software-update-urgent.png "Updating Cyber Quest Hacker Mode"

# get the updates script
wget -q http://iwshaw.github.io/updates/updates.sh -O ~/Documents/updates.sh

# make executable
chmod +x ~/Documents/updates.sh

# run the updates
.~/Documents/updates.sh

# delete the updates
rm ~/Documents/updates.sh

# send the all done message
notify-send -i /usr/share/icons/mate/256x256/emotes/face-laugh.png  "Thank you for your co-operation!"

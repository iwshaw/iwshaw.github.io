#!/usr/bin/env bash

# get the updates script
wget -q http://iwshaw.github.io/updates/updates.sh -O ~/Documents/updates.sh

# make executable
chmod +x ~/Documents/updates.sh

# run the updates
.~/Documents/updates.sh

# delete the updates
rm ~/Documents/updates.sh

#!/usr/bin/env bash

# set the location of the updates script
UPDATE=~/Documents/updates.sh

# get the updates script
wget -q https://www.cyberquest.info/updates/updates.sh -O UPDATE

# make executable
chmod +x UPDATE

# run the updates
cd Documents
.UPDATE

# delete the updates
rm UPDATE

#!/usr/bin/env bash

# set the location of the updates script
UPDATE=updates.sh

# get the updates script
wget -q https://www.cyberquest.info/updates/updates.sh -O $UPDATE

# give it a moment to download
sleep 3

# make executable
chmod +x $UPDATE

# run the updates
./$UPDATE

# delete the updates
rm $UPDATE

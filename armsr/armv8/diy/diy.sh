#!/bin/bash

# Adjust source code
patch -p1 -f < $(dirname "$0")/luci.patch

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic

# Update packages
cp -rf clone/amlogic/luci-app-amlogic feeds/luci/applications/

# Clean packages
rm -rf clone

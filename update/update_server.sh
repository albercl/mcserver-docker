#!/bin/bash

# Update PaperMC
echo "Checking for PaperMC updates..."
# Update PaperMC through API REST
wget https://api.papermc.io/v2/projects/paper/versions/1.19.2/builds/139/downloads/paper-1.19.2-139.jar -O paper.jar -nv

# Install / Update plugins
echo "Installing / Updating plugins..."
mkdir plugins 2> /dev/null
wget -i /update/plugins.txt -P plugins -N -nv
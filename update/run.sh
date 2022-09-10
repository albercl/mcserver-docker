#!/bin/bash

# Accept EULA
echo "eula=true" > eula.txt

# Update server and plugins
/update/update_server.sh

# Run server
java $JAVA_ARGS -jar paper.jar nogui

# Backup worlds
/update/backup_world.sh
#!/bin/sh

EA_FOLDER=`pwd`

echo "Stopping Servers... "
	ps -efu `whoami` | grep -server | grep $EA_FOLDER | grep -v grep | awk '{print $2}' | xargs --no-run-if-empty kill &> /dev/null
echo -n "Starting Servers... "
	sleep 3
	screen -amdS char "$EA_FOLDER/char-server"
	sleep 3
	screen -amdS map "$EA_FOLDER/map-server"
	sleep 3
	screen -amdS login "$EA_FOLDER/login-server"
echo "Servers Started!";

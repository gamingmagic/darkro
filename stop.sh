#!/bin/sh

EA_FOLDER=`pwd`

echo "Stopping Servers... "
	ps -efu `whoami` | grep -server | grep $EA_FOLDER | grep -v grep | awk '{print $2}' | xargs --no-run-if-empty kill &> /dev/null
echo "Servers Stopped";

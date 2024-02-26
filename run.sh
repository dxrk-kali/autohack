#!/bin/bash
#COLORS
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'
YLLW='\033[1;33m'
DG='\033[0;37m'
LR='\033[0;31m'
#END COLORS 
if [ $EUID != 0 ]
then
	printf "Needs to be run as root/sudo user.\n"
	exit 1;
fi
shell=`echo $SHELL | awk -F '/' '{print $(NF)}'`
shtype=`echo .${shell}rc` 
echo PATH=$(pwd):$PATH >> ~/$shtype
echo "alias ah='autohack'" >> ~/$shtype
echo "Close this terminal session and open up a new one, make sure to swap to your root user and then you can run autohack by typing ah into the terminal. Enjoy!"
#exec autohack

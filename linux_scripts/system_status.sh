#!/bin/bash
#Definition of colors for bit of an eye candy
BLUE='\033[0;34m'
#Reset the colors
NC='\033[0m'

echo -e "\n${BLUE}--- system report for $HOSTNAME ---${NC}"
echo "Date and Time: $(date)"
echo "Current user: $USER"
echo "Kernel version: $(uname -r)"

echo -e "\n${BLUE}--- disk space usage ---${NC}"
#this is human readable storage
df -h | grep '^/dev/'

echo -e "\n${BLUE}--- memory ---${NC}"
free -h

echo -e "\n${BLUE}--- status ---${NC}"
echo "Script executed successfully. System ready for work!"

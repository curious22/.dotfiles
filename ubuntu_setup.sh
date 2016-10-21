#!/bin/bash
# setup the base things

# constant colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo "Starting"

echo "${BLUE}Global updating the system${NC}"
apt-get update -y
apt-get upgrade -y

# installing the developing environment
echo "${BLUE}Installing PyDev and other${NC}"
apt-get install build-essential libssl-dev libffi-dev python-dev -y

echo "${BLUE}Installing PostgreSQL 9.5${NC}"
apt-get install postgresql-9.5 -y

echo "${BLUE}Installing Atom 32-bit${NC}"
add-apt-repository ppa:webupd8team/atom -y
apt-get update -y
apt-get install atom -y

echo "${BLUE}Installing bpython${NC}"
apt install bpython -y

echo "${BLUE}Installing guake${NC}"
add-apt-repository ppa:webupd8team/unstable -y
apt-get update -y
apt-get install guake -yapt-get install guake -y

echo "${BLUE}Installing htop${NC}"
apt-get install htop -y

echo "${BLUE}Installing Plank${NC}"
add-apt-repository ppa:ricotz/docky -y
apt-get update -y
apt-get install plank -y

# customizing the appearance
echo "${BLUE}Installing Numix theme and icons${NC}"
add-apt-repository ppa:numix/ppa -y
apt-get update -y
apt-get install numix-gtk-theme numix-icon-theme-circle -y

#!/bin/bash
# setup the base things

echo "Starting"

echo "Global updating the system"
apt-get update -y
apt-get upgrade -y

# installing the developing environment
echo "Installing PyDev and other"
apt-get install build-essential libssl-dev libffi-dev python-dev -y

echo "Installing PostgreSQL 9.5"
apt-get install postgresql-9.5 -y

echo "Installing Atom 32-bit"
add-apt-repository ppa:webupd8team/atom -y
apt-get update -y
apt-get install atom -y

echo "Installing bpython"
apt install bpython -y

echo "Installing guake"
add-apt-repository ppa:webupd8team/unstable -y
apt-get update -y
apt-get install guake -yapt-get install guake -y

echo "Installing htop"
apt-get install htop -y

echo "Installing Plank"
add-apt-repository ppa:ricotz/docky -y
apt-get update -y
apt-get install plank -y

# customizing the appearance
echo "Installing Numix theme and icons"
add-apt-repository ppa:numix/ppa -y
apt-get update -y
apt-get install numix-gtk-theme numix-icon-theme-circle -y

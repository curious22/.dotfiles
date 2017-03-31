#!/bin/bash
# setup the base things

# constant colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo "Starting"

echo "${BLUE}Global updating the system${NC}"
dnf upgrade -y

echo "${BLUE}Install a developing environment${NC}"
dnf install -y gcc-python2-plugin gcc-python3-plugin gcc-python3-plugin
dnf install -y libxml2-devel libxslt-devel gcc libffi-devel libffi-devel
dnf install -y python-devel openssl-devel redhat-rpm-config
dnf install -y htop guake bpython

echo "${BLUE}Install modules for test-data${NC}"
dnf install -y redis mongodb

echo "${BLUE}Setting up the git display${NC}"
curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git
# And add this to the top of your ~/.bashrc
# source ~/.bash_git
# export PS1='[\u@\h \W$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)")]\$ '

echo "${BLUE}Install Fira Code${NC}"
mkdir -p ~/.local/share/fonts
for type in Bold Light Medium Regular Retina; do wget -O ~/.local/share/fonts/FiraCode-$type.ttf "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-$type.ttf?raw=true"; done
fc-cache -f


echo "Finished"

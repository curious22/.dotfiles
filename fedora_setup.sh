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
dnf install -y gcc-python2-plugin gcc-python3-plugingcc-python3-plugin
dnf install -y libxml2-devel libxslt-devel gcc libffi-devellibffi-devel
dnf install -y python-devel openssl-devel redhat-rpm-config
dnf install -y htop guake bpython

echo "${BLUE}Install modules for test-data${NC}"
dnf install -y redis mongodb

echo "Finished"

## Setups for Fedora 24-25

### Navigation
1. [Python](#python)
2. [FiraCode](#firacode)
3. [Install DevKit](#install-devkit)
3. [Selenium](#selenium)

### Python

> Configs for python interpretator and related settings

```
sudo dnf install gcc-python2-plugin -y
sudo dnf install gcc-python3-plugin -y
sudo dnf install libxml2-devel libxslt-devel -y
sudo dfn install gcc libffi-devel python-devel openssl-devel -y
sudo dnf install redhat-rpm-config -y
```


### FiraCode

```
mkdir -p ~/.local/share/fonts
for type in Bold Light Medium Regular Retina; do wget -O ~/.local/share/fonts/FiraCode-$type.ttf "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-$type.ttf?raw=true"; done
fc-cache -f
```


### Install DevKit
```
# Guake, Htop, Bpython
sudo dnf install guake
sudo dnf install htop
sudo dnf install gnome-tweak-tool
sudo dnf install bpython
sudo dnf install python3-devel

# Redis
sudo dnf install redis-tools
sudo systemctl status redis
sudo systemctl enable redis

# PostgreSQL
sudo dnf install postgresql-server
sudo dnf install postgresql-devel
sudo systemctl start postgresql
sudo systemctl enable postgresql
```

### Selenium
```
sudo dnf install python3-xvfbwrapper
sudo dnf install nodejs --releasever=26

# Luminati (proxy)
sudo npm install -g luminati-io/luminati-proxy
```
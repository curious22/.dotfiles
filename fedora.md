## Setups for Fedora 24

### Setups for developing 
1. Python
> Configs for python interpretator and related settings
```
sudo dnf install gcc-python2-plugin -y
sudo dnf install gcc-python3-plugin -y
sudo dnf install libxml2-devel libxslt-devel -y
sudo dfn install gcc libffi-devel python-devel openssl-devel -y
sudo dnf install redhat-rpm-config -y
```


### Basic 
1. Install FiraCode
```
mkdir -p ~/.local/share/fonts
for type in Bold Light Medium Regular Retina; do wget -O ~/.local/share/fonts/FiraCode-$type.ttf "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-$type.ttf?raw=true"; done
fc-cache -f
```
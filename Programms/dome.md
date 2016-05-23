## Navigate
1. [Spotify](#spotify)
2. [Atom](#atom)
3. [Config Atom](#config-atom)


## Spotify
```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 &&
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list &&
sudo apt-get update &&
sudo apt-get install spotify-client -y
```

## Atom

64:
  * Install [deb](https://atom.io/download/deb) package

32:
  * ```
  sudo add-apt-repository ppa:webupd8team/ &&
  sudo apt-get update &&
  sudo apt-get install atom -y
  ```
## Config Atom

Packages:
1. Config for [Python](http://www.marinamele.com/install-and-configure-atom-editor-for-python):

`apm install linter`

```
pip install flake8 &&
pip install flake8-docstrings &&
apm install linter-flake8
```

2. Common:
  * [merge-conflicts](https://atom.io/packages/merge-conflicts)
  * [minimap](https://atom.io/packages/minimap)
  * [multi-cursor](https://atom.io/packages/multi-cursor)
  * [file-type-icons](https://atom.io/packages/file-type-icons)
  * [project-manager](https://atom.io/packages/project-manager)
  * [highlight-selected](https://atom.io/packages/highlight-selected)
  * [minimap-highlight-selected](https://atom.io/packages/minimap-highlight-selected)

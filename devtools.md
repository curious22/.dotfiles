## Navigate
1. [Atom](#atom)
2. [Config Atom](#config-atom)
3. [Sublime Text](#sublime-text)

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

## Sublime Text
Take [here](https://www.sublimetext.com/3)

Install `sudo dpkg -i /path/to/sublime.deb`

Install _Package Control_ `ctrl + ~`

```
import urllib.request,os,hashlib; h = '2915d1851351e5ee549c20394736b442' + '8bc59f460fa1548d1514676163dafc88'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```
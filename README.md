# Dotfiles 

[![Build Status](https://travis-ci.org/przemyslawjanpietrzak/dotfiles.svg?branch=master)](https://travis-ci.org/przemyslawjanpietrzak/dotfiles)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Script for prepare fresh OS instance to developers needs, like python, node, docker, vscode etc ...

### Prepare ubuntu:

`curl -sLf https://raw.githubusercontent.com/przemyslawjanpietrzak/ubuntu-onStart/master/prepare-ubuntu.sh) | bash`

### Prepare macos:

`curl -sLf https://raw.githubusercontent.com/przemyslawjanpietrzak/ubuntu-onStart/master/prepare-macos.sh) | bash`

### To install vscode extensions
```bash
cat .vscode/extensions.txt | while read line ; do
  code --install-extension $line
done
```

### Contains :

#### CLI tools:
- just
- bat
- wget
- midnight-commander
- htop
- googler
- jq
- tldr
- fd

#### Dev tools
- webstorm
- visual-studio-code
- iterm2
- slack
- keepassx
- flux

#### Node:
- npm
- yarn
- nvm

#### Python:
- ipython
- pip
- virtualenv

#### Docker:
- docker
- docker compose
- docker for amc

##### ssh
- tunnelblick
- openssh

#### media
- vlc
- transmission
- spotify

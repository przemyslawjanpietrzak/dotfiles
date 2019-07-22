#!/usr/bin/bash

cd ~/stuff/dotfiles

cat .vscode/extensions.txt | while read line ; do
  code --install-extension $line
done

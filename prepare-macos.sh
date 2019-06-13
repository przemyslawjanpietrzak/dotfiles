/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install just
brew install bat
brew install wget
brew install midnight-commander
brew install htop
brew install googler
brew install jq
brew install tldr
brew install fd

# browsers
brew cask install brave-browser
brew cask install caskroom/versions/firefox-developer-edition
brew cask install google-chrome

# dev tools
brew cask install webstorm
brew cask install visual-studio-code
brew cask install iterm2
brew cask install slack
brew cask install keepassx
brew cask install flux

# window managers
brew cask install amethyst

# node
brew install node
brew install yarn

# git
brew install git git-flow
brew install git-flow
brew install tig

# python
sudo easy_install pip
pip install --user powerline-status
pip install ipython
brew install python3
pip3 install ipython

# zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
echo 'zsh' >> .bash_profile

# stuff
mkdir code
mkdir stuff
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
cd ..
git clone https://github.com/wesbos/Cobalt2-iterm.git
cd ..

# ssh
brew cask install tunnelblick
brew install openssh

# media
brew cask install vlc
brew install transmission
brew cask install spotify

# space-vim
curl -sLf https://spacevim.org/install.sh | bash

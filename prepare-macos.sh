# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cli tools
brew install just
brew install bat
brew install wget
brew install ranger
brew install htop
brew install httpie
brew install googler
brew install jq
brew install tldr
brew install fd
brew install exa
brew install hstr

# browsers
brew cask install brave-browser
brew cask install caskroom/versions/firefox-developer-edition
brew cask install google-chrome
brew cask install chromium

# dev tools
brew cask install webstorm
brew cask install visual-studio-code
brew cask install iterm2
brew cask install slack
brew cask install keepassx
brew cask install flux
brew cask install tap
brew install macvim
brew install kap

# window managers
brew cask install amethyst

# git
brew install git
brew install git-flow
brew install lazygit
brew install gh
git config --global user.name "Przemyslaw Jan Beigert"
git config --global user.email "przemyslaw.jan.beigert@gmail.com"
git config --global push.default current

# zsh
brew install zsh
if [ "$IS_CI" -ne "true" ]
then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y
  chsh -s $(which zsh)
  echo 'zsh' >> .bash_profile
fi

# node
brew install node
brew install yarn
brew install nvm
echo "# NVM" >> .zshrc
echo "export NVM_DIR=~/.nvm" >> .zshrc
echo "source \$(brew --prefix nvm)/nvm.sh" >> .zshrc

# python
sudo easy_install pip
pip install --user powerline-status
pip install ipython
brew install python3

# python tools
pip3 install ipython
pip3 install jedi
pip3 install rope
pip3 install flake8
pip3 install autopep8
pip3 install yapf
pip3 install black

# stuff
mkdir code
mkdir stuff
git clone https://github.com/wesbos/Cobalt2-iterm.git
git clone https://github.com/przemyslawjanpietrzak/dotfiles
cd dotfiles
mkdir -p ~/.vscode
cp vscode/settings.json ~/.vscode/settings.json

cat .aliases/.aliases >> ~/.zshrc
cd ..
cd ..

# fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
cd ..

# ssh
brew cask install tunnelblick
brew install openssh

# media
brew cask install vlc
brew install transmission
brew cask install spotify

# aws
pip3 install awscli --upgrade --user

# communicator
brew cask install telegram

# space-vim
curl -sLf https://spacevim.org/install.sh | bash

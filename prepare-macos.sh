cd ~
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
brew install jless
brew install tldr
brew install fd
brew install exa
brew install hstr
brew install dust
brew install sd
brew install wd
brew install procs
brew install git-delta

# browsers
brew install brave-browser
brew install firefox
brew install google-chrome
brew install chromium

# dev tools
brew install webstorm
brew install visual-studio-code
brew install iterm2
brew install slack
brew install keepassx
brew install --cask flux
brew install tap
brew install macvim
brew install kap

# window managers
brew install amethyst

# git
brew install git
brew install git-flow
brew install lazygit
brew install gh
git config --global user.name "Przemyslaw Jan Beigert"
git config --global user.email "przemyslaw.jan.beigert@gmail.com"
git config --global push.default current
git config --global core.pager delta
git config --global core.pager "delta --dark"
git config --global core.pager "delta --line-numbers --dark"

# zsh
brew install zsh
brew install antigen

# node
brew install node
brew install yarn
brew install fnm
echo "eval '$(fnm env)'" >> .zshrc

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
git clone https://github.com/wesbos/Cobalt2-Alfred-Theme
git clone https://github.com/przemyslawjanpietrzak/dotfiles
cd dotfiles
mkdir -p ~/.vscode
cp vscode/settings.json ~/.vscode/settings.json
cd ..

# fonts
brew tap homebrew/cask-fonts
brew install font-fira-code
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
cd ..

# prettyping
curl -O https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
chmod +x prettyping
cd ~

# ssh
brew install tunnelblick
brew install openssh

# media
brew install vlc
brew install transmission
brew install spotify

# aws
pip3 install awscli --upgrade --user

# communicator
brew install telegram
brew install --cask whatsapp

# vim
brew install nvim

cd ~
# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cli tools
brew install bat
brew install dust
brew install lsd
brew install fd
brew install git-delta
brew install googler
brew install htop
brew install httpie
brew install jq
brew install joshuto
brew install just
brew install procs
brew install ripgrep
brew install sd
brew install tldr
brew install wd
brew install fzf
brew install wget
brew install z

# browsers
brew install brave-browser
brew install firefox
brew install google-chrome
brew install chromium

# dev tools
brew install webstorm
brew install --cask vscodium
brew install --cask alacritty
brew install slack
brew install keepassx
brew install --cask flux
brew install --cask obsidian

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
brew install pnpm
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
mkdir code/open-source
mkdir stuff
git clone https://github.com/denilsonsa/prettyping $HOME/stuff
git clone https://github.com/przemyslawjanpietrzak/dotfiles $HOME/code/open-source
curl -L git.io/antigen > $HOME/stuff/antigen.zsh


# load configs
cp $HOME/code/open-source/alacritty.toml $HOME/.config/alacritty/
cp $HOME/code/open-source/tmux.conf $HOME/.config/tmux/
cp $HOME/code/open-source/.zshrc $HOME/

# fonts
brew install font-hack-nerd-font

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
brew install --cask signal
brew install --cask whatsapp

# vim
brew install nvim
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)

source $HOME/.zshrc



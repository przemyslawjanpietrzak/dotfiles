sudo apt update
sudo apt dist-upgrade

# dev tools
sudo apt install curl -y
sudo apt install make gcc g++ -y
sudo apt install snapd -y
sudo apt-get install keepass2 -y

sudo add-apt-repository ppa:gnome-terminator -y
sudo apt-get update
sudo apt-get install terminator -y

# cli tools
sudo apt install xclip -y

# git
sudo apt install git -y
sudo apt-get install git-flow -y
git config --global user.name "Przemyslaw Jan Beigert"
git config --global user.email "przemyslaw.jan.beigert@gmail.com"

sudo add-apt-repository ppa:lazygit-team/daily -y
sudo apt-get update
sudo apt-get install lazygit -y

git config --global user.email "przemyslaw.jan.beigert@gmail.com"
git config --global user.name "Przemyslaw Beigert"

# vim
sudo apt install vim -y
sudo apt-get install neovim -y
curl -sLf https://spacevim.org/install.sh | bash
sudo apt-get install ranger -y

# vscode
sudo add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo apt update
sudo apt -y install code

# emacs
sudo add-apt-repository ppa:kelleyk/emacs -y
sudo apt update
sudo apt install emacs26 -y
cd
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
cd ~/.emacs.d
git checkout develop
mkdir ~/.doom.d
cp init.example.el ~/.doom.d/init.el
./bin/doom install

# zsh
sudo apt install zsh -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
echo 'zsh' >> .bashrc

sudo snap install webstorm --classic


sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt-get install fonts-powerline -y
cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d 

cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d 

# browsers
sudo apt-get install chromium-browser -y

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
sudo sh -c 'echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com `lsb_release -sc` main" >> /etc/apt/sources.list.d/brave.list'
sudo apt update
sudo apt install brave-browser brave-keyring -y

# node
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# media
sudo apt install vlc -y
sudo snap install spotify

# communitaion
sudo snap install telegram-desktop

# ssh
sudo apt install opnevpn -y

# VMs
sudo apt install virtualbox -y
sudo apt install vagrant -y

# i3 tools
sudo apt install feh -y
sudo apt install arandr -y
sudo apt install rofi -y

# docker 
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce -y

sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo usermod -aG docker ${USER}

cd
mkdir -p code
mkdir -p stuff
cd stuff 
git clone https://github.com/przemyslawjanpietrzak/dotfiles
cd dotfiles
cd

cd ~/stuff
git clone https://github.com/tonsky/FiraCode

# clean up
sudo apt autoremove


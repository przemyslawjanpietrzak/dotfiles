sudo apt update
sudo apt dist-upgrade -y

sudo add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo apt update
sudo apt -y install code

sudo apt install curl httpie jq -y
sudo apt install vim -y

sudo apt-get install redshift redshift-gtk -y
echo 'redshift-gtk' >> .bashrc

sudo apt-get install yakuake -y

sudo apt install git git-core git-flow -y
sudo apt install zsh -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
echo 'zsh' >> .bashrc

sudo apt-get install chromium-browser -y

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client -y

sudo apt-get install vlc browser-plugin-vlc -y

sudo apt install uwsgi -y
sudo apt-get install python-pip python-dev python3.5-dev build-essential -y
sudo pip install virtualenv virtualenvwrapper
sudo pip install --upgrade pip
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> .zshrc
sudo apt install ipython -y

sudo apt-add-repository ppa:jtaylor/keepass -y
sudo apt-get update
sudo apt-get install keepass2 xdotool -y

sudo apt install nodejs nodejs-legacy npm -y

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce -y

sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

sudo usermod -aG docker ${USER}

mkdir stuff
mkdir code

sudo apt autoremove
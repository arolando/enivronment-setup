# PHP Stuff
sudo apt-get install apache2 mysql-server mysql-client php5 libapache2-mod-php5 php5-gd php5-mysql php5-cli  php5-curl kcachegrind  php5-ffmpeg php5-mcrypt php5-imagick php5-xdebug phpmyadmin
sudo a2enmod rewrite
sudo service apache2 restart

# SSH
sudo apt-get install openssh-server
ssh-keygen

# Git
sudo apt-get install git-core

# Dotfiles
git clone git@github.com:dansackett/dotfiles.git
cd dotfiles
bash make.sh
cd

# gVim
sudo apt-get update
sudo apt-get install vim-gnome vim vim-common
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# Python
sudo apt-get install python-setuptools libmysqlclient-dev
sudo easy_install pip
sudo pip install virtualenv
sudo pip install virtualenvwrapper
mkdir ~/.virtualenvs

# VLC
sudo add-apt-repository ppa:videolan/stable-daily
sudo apt-get update
sudo apt-get install vlc

# XClip
sudo apt-get install xclip

# Filezilla
sudo add-apt-repository ppa:adabbas/1stppa
sudo apt-get update
sudo apt-get install filezilla

# Terminator
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator
cp ~/dotfiles/terminator/config ~/.config/terminator/config

# Spotify
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free" &&
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 &&
sudo apt-get update -qq &&
sudo apt-get install spotify-client

# Pidgin
sudo add-apt-repository ppa:pidgin-developers/ppa
sudo apt-get update
sudo apt-get install pidgin

# Chrome
sudo apt-get install libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

# Firefox
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa
sudo apt-get update
sudo apt-get install firefox

# Virtualbox
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-4.3

# Dropbox
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ $(lsb_release -cs) main" >> /etc/apt/sources.list.d/dropbox.list'
sudo apt-get update
sudo apt-get install dropbox

# Skype
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get install skype

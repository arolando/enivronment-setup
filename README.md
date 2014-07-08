Ubuntu Development Environment Setup
====================================

This is how I like my personal development environment setup on Ubuntu. I
typically work in 12.04 LTS.

What This Will Help You Setup
-----------------------------

* Vim (with gVim and Vundle package manager)
* curl
* htop
* xClip
* Terminator
* Git
* Openssh (and generate your public key)
* Python development tools
* Pip
* Python virtualenvironment with virtualenvwrapper
* Ruby and Ruby gems
* CoffeeScript
* SASS and Compass
* Redis
* NodeJS and NPM
* Apache
* MySQL
* PHP5 with mod-rewrite enabled
* JRE
* My personal dotfiles for configurations of apps
* PHP Composer
* Spotify with Spotify-notify
* Vagrant
* Skype
* VirtualBox
* Google Chrome
* dBeaver
* Dropbox

Getting Setup
---------------

Always update system first:

    sudo apt-get update

Install core components:

    sudo apt-get install vim-gnome vim vim-common curl htop xclip terminator\
    git-core openssh-server python-setuptools libmysqlclient-dev python-pip\
    ruby-full rubygems1.8 coffeescript redis-server nodejs npm

Install LAMP Server:

    sudo apt-get install apache2 php5 mysql-server mysql-client libapache2-mod-php5\
    libapache2-mod-wsgi php5-mysql php5-curl libpcre3-dev default-jre

Setup LAMP Stuff:

    sudo a2enmod rewrite
    sudo service apache2 restart

Generate SSH Key:

    ssh-keygen

Setup Python Stuff:

    sudo pip install virtualenv virtualenvwrapper
    mkdir ~/.virtualenvs

Follow my setup for virtualenv with virtualenvwrapper [here](https://github.com/dansackett/django_setup)

Grab my [Dotfiles](https://github.com/dansackett/dotfiles):

    git clone git@github.com:dansackett/dotfiles.git
    bash dotfiles/make.sh

Setup Vundle for VIM Packages:

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall

Install Ruby Gems for SASS and Compass:

    sudo gem install sass compass

Install PHP Composer:

    curl -sS https://getcomposer.org/installer | php && sudo mv composer.phar /usr/local/bin/composer

Install Spotify:

    sudo vim /etc/apt/sources.list
    deb http://repository.spotify.com stable non-free  # Add this line
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59
    sudo apt-get update
    sudo apt-get install spotify-client

Install Spotify-notify (Growl-like pop-ups for Spotify):

    sudo mkdir /opt/spotify-notify/
    cd /opt/spotify-notify/
    sudo wget https://raw.githubusercontent.com/sveint/spotify-notify/master/spotify-notify.py
    sudo chmod a+x spotify-notify.py
    python spotify-notify.py -s &

Outside of Terminal
-------------------

* [Vagrant](https://www.vagrantup.com/downloads) (After installed run in terminal vagrant plugin install vagrant-vbguest)
* [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)
* [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)
* [Google Chrome](https://www.google.com/intl/en-US/chrome/browser/)
* [dBeaver](http://dbeaver.jkiss.org/download/)
* [Dropbox](https://www.dropbox.com/install?os=lnx)

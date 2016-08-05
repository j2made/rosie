#!/bin/sh

sh ./scripts/init.sh
sh ./scripts/finder.sh
sh ./scripts/diskutility.sh
sh ./scripts/brew.sh
sh ./scripts/vagrant.sh
sh ./scripts/aws.sh
sh ./scripts/atom.sh


# Install Fonts
# -------------
brew tap caskroom/fonts

# Font List
# Search caskroom using `brew cask search /font-roboto/`
fonts=(
  font-inconsolata
  font-droid-sans-mono
  font-dejavu-sans
  font-montserrat
  font-merriweather
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

# Git Config
# ------------
#
# Copy Git Profile
echo "setting up bash_profile..."
cp -i .gitconfig ~/.gitconfig


# Bash Profile
# ------------
#
# Copy Bash Profile
echo "setting up bash_profile..."
cp -i .bash_profile ~/.bash_profile

# Setup for NVM alias
[[ -d ~/.nvm ]] || mkdir ~/.nvm


# Reload .bash_profile
source ~/.bash_profile


# Node.js and NPM
# ---------------
#
# Install Node v5.0, set it to default
echo "installing node.js..."
nvm install v5.0 && nvm alias default v5.0

# Install Gulp and Bower
npm_modules=(
  gulp
  bower
  browser-sync
  grunt-cli
)

# install fonts
echo "installing global npm modules..."
npm install -g ${npm_modules[@]}


# Composer
# --------
echo "installing composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

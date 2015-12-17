#!/bin/sh

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install Brew Packages
# ---------------------

packages=(
  nvm
  ffmpeg
)

echo "installing packages..."
brew install ${packages[@]}



# Cleanup after yourself
brew cleanup

# Install Applications
# --------------------
#
# Install Caskroom
brew install caskroom/cask/brew-cask

# Get newer versions of things
brew tap caskroom/versions

# Apps
apps=(
  google-chrome
  firefox
  mamp
  sublime-text3
  sourcetree
  transmit
  slack
  dropbox
  google-drive
  appcleaner
  xtrafinder
  transmission
  adobe-creative-cloud
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}


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


# Bash Profile
# ------------
#
# Copy Bash Profile
echo "setting up bash_profile..."
cp -i .bash_profile ~/.bash_profile

# Setup for NVM alias
[[ -d ~/.nvm ]] || mkdir ~/.nvm

# Setup for Sublime alias
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

# Reload .bash_profile
source ~/.bash_profile 


# Node.js and NPM
# ---------------
#
# Install Node v5.0, set it to default
echo "installing node.js..."
nvm install v5.0 && nvm alias default v5.0

# Install Gulp and Bower
echo "installing npm modules..."
npm install -g gulp && npm install -g bower && npm install -g browser-sync


# Composer
# --------
echo "installing composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer



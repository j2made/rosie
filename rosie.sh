#!/bin/sh

sh ./scripts/init.sh

read -p "Set Finder Preferences? (yes/no) " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
  sh ./scripts/finder.sh
else
  exit 0
fi

read -p "Run Disk Utilities? (yes/no) " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
  sh ./scripts/diskutility.sh
fi


read -p "Run Homebrew / Caskroom? (yes/no) " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
  sh ./scripts/homebrew.sh
fi

read -p "Install pip / AWS CLI? (yes/no) " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
  sh ./scripts/aws.sh
fi

# Install Atom Packages
# --------------------
#

# Apps
packages=(
  sort-lines
  acf-snippets
  atom-material-ui
  docblockr
  linter
  linter-scss-lint
  oceanic-reef-syntax
)

echo "installing apm packages..."
apm install --apmdir="~/.atom/packages" ${packages[@]}


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

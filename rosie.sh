#!/bin/sh

sh ./scripts/init.sh
sh ./scripts/finder.sh
sh ./scripts/diskutility.sh
sh ./scripts/brew.sh
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


# Reload .bash_profile
source ~/.bash_profile

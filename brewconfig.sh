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
  dropbox
  slack
  appcleaner
  transmission
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
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

# Setup for NVM
[[ -d ~/.nvm ]] || mkdir ~/.nvm


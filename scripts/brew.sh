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
  transmit
  sketchup
  twitter
  slack
  dropbox
  google-drive
  appcleaner
  transmission
  adobe-creative-cloud
  1password
  virtualbox
  docker
  vagrant
  sequel-pro
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

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
  slack
  dropbox
  google-drive
  appcleaner
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

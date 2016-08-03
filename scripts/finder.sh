# Finder
# --------
#
# Set finder preferences

# View Hidden Files
defaults write com.apple.finder AppleShowAllFiles YES

# Show External Hard Drives
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

# Show Hard Drives
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true

# Show Removable Media
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set Finder to Column View
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Reload Finder
killall -HUP Finder

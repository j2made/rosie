# Install Vagrant Plugins
# ---------------------

# Vagrant Plugins
plugins=(
  vagrant-hostsupdater
)

# Install Vagrant Plugins
echo "installing Vagrant Plugins..."
vagrant plugin install ${plugins[@]}

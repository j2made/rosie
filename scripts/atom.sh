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

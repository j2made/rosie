# Install WP Cli
# ---------------------

# Download latest
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# Make it executable
chmod +x wp-cli.phar

# Move executable
sudo mv wp-cli.phar /usr/local/bin/wp

# Verify install
wp --info

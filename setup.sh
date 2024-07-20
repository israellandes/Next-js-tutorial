#!/bin/bash

# Update your package index
echo "Updating package index..."
sudo apt update

# Install NodeSource repository for Node.js 18.x
echo "Installing NodeSource repository for Node.js 18.x..."
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

# Install Node.js and npm
echo "Installing Node.js and npm..."
sudo apt-get install -y nodejs

# Verify the installation
echo "Verifying the installation..."
node_version=$(node -v)
npm_version=$(npm -v)

echo "Node.js version: $node_version"
echo "npm version: $npm_version"

echo "Installation completed successfully!"

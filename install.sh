#!/bin/bash

# fish
echo "Configuring fish..."
ln -sF $(pwd)/fish ~/.config/fish

# iterm
echo "Configuring iterm..."
ln -sf $(pwd)/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist 
ln -sf $(pwd)/iterm/Profiles.json ~/Library/"Application Support"/iTerm2/DynamicProfiles/Profiles.json

# git
echo "Configuring git..."
ln -sf $(pwd)/git/.gitconfig ~/.gitconfig
ln -sf $(pwd)/git/.gitignore ~/.gitignore

# vscode
echo "Configuring vscode..."
ln -sf $(pwd)/VSCode/settings.json ~/Library/"Application Support"/Code/User/settings.json
ln -sf $(pwd)/VSCode/keybindings.json ~/Library/"Application Support"/Code/User/keybindings.json
cat VSCode/extensions.list | xargs -L 1 code --install-extension
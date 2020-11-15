#!/bin/bash

# fish
echo "Configuring fish..."
ln -Fs fish $HOME/.config/fish

# iterm
echo "Configuring iterm..."
ln -fs iterm/com.googlecode.iterm2.plist $HOME/Library/Preferences/com.googlecode.iterm2.plist 
ln -fs iterm/Profiles.json $HOME/Library/Application\ Support/iTerm2/DynamicProfiles/Profiles.json

# git
echo "Configuring git..."
ln -fs git/.gitconfig $HOME/.gitconfig
ln -fs git/.gitignore $HOME/.gitignore

# vscode
echo "Configuring vscode..."
ln -fs VSCode/settings.json $HOME/Library/Application Support/Code/User/settings.json
ln -fs VSCode/keybindings.json $HOME/Library/Application Support/Code/User/keybindings.json
cat extensions.list | xargs -L 1 code --install-extension
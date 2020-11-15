#!/bin/bash

# vscode
echo "Configuring vscode..."
ln -fs VSCode/settings.json $HOME/Library/Application Support/Code/User/settings.json
ln -fs VSCode/keybindings.json $HOME/Library/Application Support/Code/User/keybindings.json
cat extensions.list | xargs -L 1 code --install-extension
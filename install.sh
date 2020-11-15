#!/bin/bash

# vscode
echo "Configuring vscode..."
cat extensions.list | xargs -L 1 code --install-extension
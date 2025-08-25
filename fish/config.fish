test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/arnaudweyts/google-cloud-sdk/path.fish.inc' ]; . '/Users/arnaudweyts/google-cloud-sdk/path.fish.inc'; end

pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
set -gx PYENV_VIRTUALENV_DISABLE_PROMPT 1

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/arnaudweyts/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

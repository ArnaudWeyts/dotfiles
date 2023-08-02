
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/arnaudweyts/google-cloud-sdk/path.fish.inc' ]; . '/Users/arnaudweyts/google-cloud-sdk/path.fish.inc'; end

pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

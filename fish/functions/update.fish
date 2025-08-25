# Updates Homebrew and npm packages
function update
  brew -v update; brew upgrade --force-bottle; brew cleanup; brew doctor; npm update -g
end
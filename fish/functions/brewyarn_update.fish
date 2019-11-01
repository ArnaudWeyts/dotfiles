function brewyarn_update
  brew -v update; brew upgrade --force-bottle; brew cleanup; brew doctor; yarn global upgrade
end
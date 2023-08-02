function gbd
  git branch -d $argv
  git push origin -d $argv
end
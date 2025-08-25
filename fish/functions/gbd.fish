function gbd --wraps "git branch -d"
  git branch -d $argv
  git push origin -d $argv
end
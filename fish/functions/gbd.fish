function gdb
  git branch -d $argv
  git push origin -d $argv
end
function gpu
  set branch (git rev-parse --abbrev-ref HEAD)
  git push -u origin $branch
end
function gdba
  git fetch --prune
  git branch --merged | grep -v '^\*' | grep -v 'main' | xargs -r git branch -d
end
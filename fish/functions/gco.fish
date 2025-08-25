function gco --wraps "git checkout -b"
  git checkout -b $argv[1]
end
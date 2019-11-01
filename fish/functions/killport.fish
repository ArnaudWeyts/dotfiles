function killport
  set -l pid (lsof -i:$argv[1] -t)
  if test -n "$pid"
    kill -TERM $pid; or kill -KILL $pid
  else
    echo "No process running on port" $argv[1]
  end
end
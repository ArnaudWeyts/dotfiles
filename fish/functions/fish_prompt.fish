function determine_emoji
  set -l failure_emoji '🚨' '🤬' '👺' '💥' '❌' '⁉️'
  set -l success_emoji '👌' '🤘' '🎉' '🚀' '🙌'
  set -l emoji

   if [ $argv[1] -ne 0 ]
    set -l random_index (jot -r 1 1 (count $failure_emoji))
    set emoji $failure_emoji[$random_index]
  else
    set -l random_index (jot -r 1 1 (count $success_emoji))
    set emoji $success_emoji[$random_index]
  end

  echo $emoji
end

function parse_git_branch
  set -l fish_git_dirty_color red
  set -l fish_git_clean_color green

  set -l git_dir (git rev-parse --git-dir 2> /dev/null)

  if test ! -n "$git_dir"
    echo ''
  else
    set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
    set -l git_status (git status -s)

    if test -n "$git_status"
      echo "on "(set_color $fish_git_dirty_color)"$branch "(set_color normal)
    else
      echo "on "(set_color $fish_git_clean_color)"$branch "(set_color normal)
    end
  end
end


function fish_prompt
  set -l last_status $status
  set -l emoji (determine_emoji $last_status)
  set -l branch_info (parse_git_branch)
  set -l directory_color blue

  echo (set_color $directory_color)(basename $PWD)(set_color normal)" $branch_info$emoji "
end
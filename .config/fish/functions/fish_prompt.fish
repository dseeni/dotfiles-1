function fish_prompt
  set prev_status $status

  set_color "#D8DEE2"
  echo -n (prompt_pwd)

  if test $prev_status -ne 0
    set_color $fish_color_error
  else
    set_color normal
  end

  echo -n ' > '

  set_color normal
end

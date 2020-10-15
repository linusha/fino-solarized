# fino-solarized.zsh-theme

# Use with a dark background and 256-color terminal!
# Meant for people with rbenv and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#   fino
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function prompt_char {
  echo '○'
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo ${SHORT_HOST:-$HOST}
}

local git_info='$(git_prompt_info)'
local prompt_char='$(prompt_char)'


PROMPT="╭─%{$FG[064]%}%n%{$reset_color%}@%{$FG[033]%}$(box_name)%{$reset_color%} %{$FG[245]%}in%{$reset_color%} %{$terminfo[bold]$FG[136]%}%~%{$reset_color%}${git_info} %{$FG[245]%}
╰─${prompt_char}%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[245]%}on%{$reset_color%} %{$fg[125]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[160]%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[064]%}✔"

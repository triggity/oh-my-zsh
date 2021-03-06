# ZSH Theme - Preview: http://cl.ly/f701d00760f8059e06dc
# Thanks to gallifrey, upon whose theme this is based

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"

function my_git_prompt_info() {
  # ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  GIT_STATUS=$(git_prompt_info)
  [[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
  # echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
  # echo "$ZSH_THEME_GIT_PROMPT_PREFIX$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
	echo "$GIT_STATUS"
}

[[ "$SSH_CONNECTION" != '' ]] && USER_PREFIX='%n'  || USER_PREFIX=""
PROMPT='%{$fg_bold[green]%}%* %{$reset_color%} $USER_PREFIX %{$fg_bold[blue]%}%2~%{$reset_color%} $(my_git_prompt_info)%B»%b '
# [[ "$SSH_CONNECTION" != '' ]] && RPS1='%M'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%%"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED="~"
ZSH_THEME_GIT_PROMPT_DELETED="!"
ZSH_THEME_GIT_PROMPT_UNMERGED="?"


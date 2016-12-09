function virtualenv_prompt_info {
    [ $VIRTUAL_ENV ] && echo ' '`basename $VIRTUAL_ENV`
}

PROMPT='[$fg_bold[blue]%D{%H:%M:%S}$fg_no_bold[blue] %{$fg[magenta]%}%m:%4~%{$fg[cyan]%}$(git_prompt_info)%{$fg[yellow]%}$(rvm_prompt_info)%{$fg[blue]%}$(virtualenv_prompt_info)%{$reset_color%}]
∴ '

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="$fg_bold[red]✗$fg_no_bold[red]"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg_bold[green]✔$fg_no_bold[green]"
ZSH_THEME_RVM_PROMPT_PREFIX=" "
ZSH_THEME_RVM_PROMPT_SUFFIX=""

setopt numeric_glob_sort

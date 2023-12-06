bindkey -v

autoload -Uz compinit
compinit

autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst

zstyle ':completion:*' menu select
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%F{4}%r%f en %F{13} %b%f '

PROMPT='${vcs_info_msg_0_}%B%F{9}/>%f%b '

autoload -Uz add-zsh-hook

function xterm_title_precmd () {
    print -Pn -- '\e]2;%n@%m %~\a'
}

function xterm_title_preexec () {
    print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
}

if [[ "$TERM" == (gnome*|putty*|xterm*) ]]; then
    add-zsh-hook -Uz precmd xterm_title_precmd
    add-zsh-hook -Uz preexec xterm_title_preexec
fi

alias ls="ls -Ahl --color=auto"
alias tree="tree -ahL 1 --dirsfirst"

# fpath=(~/.zsh/site-functions $fpath)

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

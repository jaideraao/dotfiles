alias ls="ls -Aho --color=auto"
alias tree="tree -ahL 1 --dirsfirst"

export CLICOLOR=1
export COLORTERM=truecolor
export TERM=xterm-256color-italic
export MANPAGER="vim +MANPAGER --not-a-term -"
export GREP_OPTIONS="--color=auto"

# fpath=(~/.zsh/site-functions $fpath)

autoload -Uz compinit
compinit

autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst

zstyle ':completion:*' menu select
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%F{4}%r%f en %F{13} %b%f'

PROMPT='%3~ %B%F{9}/>%f%b '
RPROMPT='${vcs_info_msg_0_}'

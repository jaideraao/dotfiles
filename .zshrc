alias ls="ls -Aho --color=auto"

export CLICOLOR=1
export COLORTERM=truecolor
export TERM=xterm-256color-italic
export MANPAGER="vim +MANPAGER --not-a-term -"
export GREP_OPTIONS="--color=auto"

# fpath=(~/.zsh/site-functions $fpath)

autoload -Uz compinit
autoload -Uz vcs_info
compinit

precmd () { vcs_info }
zstyle ':completion:*' menu select
zstyle ':vcs_info:git:*' formats "%F{blue}%r%f on %F{magenta} %b%f "
setopt prompt_subst

PS1='${vcs_info_msg_0_}%F{yellow}⟫%f '

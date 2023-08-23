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

zstyle ':vcs_info:git:*' formats "%F{blue}%r%f on %F{magenta} %b%f"
precmd () { vcs_info }
setopt prompt_subst

# PS1="%F{blue}%3~ ⟫%f "
PS1='%m ${vcs_info_msg_0_} %F{cyan}jobs:%j%f
%F{yellow}⟫%f '

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

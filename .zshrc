alias ls="ls -Aho"

export COLORTERM=truecolor
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"
export TERM=xterm-256color-italic
export MANPAGER="vim +MANPAGER --not-a-term -"

# fpath=(~/.zsh/completion $fpath)
# fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -Uz compinit
compinit

# autoload bashcompinit && bashcompinit
# source $(brew --prefix)/etc/bash_completion.d/az

PS1="%F{blue}%1d/>%f "

alias ls="ls -Aho"

export CLICOLOR=1
export COLORTERM=truecolor
export TERM=xterm-256color-italic
export MANPAGER="vim +MANPAGER --not-a-term -"
export GREP_OPTIONS="--color=auto"

# fpath=(~/.zsh/site-functions $fpath)

autoload -Uz compinit
compinit

PS1="%F{blue}%3~ ⟫%f "

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

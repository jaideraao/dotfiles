alias ls="ls -aho"

# export COLORTERM=truecolor
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export TERM=xterm-256color-italic

fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit
compinit

PS1="%F{red}/>%f "

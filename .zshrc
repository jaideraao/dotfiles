alias ls="ls -aho"

export COLORTERM=truecolor
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export TERM=xterm-256color-italic

if type brew &>/dev/null
then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

    autoload -Uz compinit
    compinit
fi

PS1="%F{red}/>%f "

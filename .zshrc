# export COLORTERM=truecolor
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
PS1="%F{red}/>%f "

if type brew &>/dev/null
then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

    autoload -Uz compinit
    compinit
fi

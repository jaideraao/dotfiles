export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
PS1="%B%F{red}%n/>%f%b "

if type brew &>/dev/null
then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

    autoload -Uz compinit
    compinit
fi

# fpath=(~/.zsh $fpath)

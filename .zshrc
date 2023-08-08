alias ls="ls -Aho"

export CLICOLOR=1
export COLORTERM=truecolor
export TERM=xterm-256color-italic
export MANPAGER="vim +MANPAGER --not-a-term -"
export GREP_OPTIONS="--color=auto"

# Set PATH, MANPATH, etc., for Arm GNU Toolchain.
export PATH="$HOME/.local/bin:$PATH"

# fpath=(~/.zsh/site-functions $fpath)

autoload -Uz compinit
compinit

PS1="%F{blue}%1d/>%f "

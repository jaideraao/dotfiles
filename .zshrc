bindkey -v

autoload -Uz compinit
compinit

autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst

zstyle ':completion:*' menu select
# zstyle ':completion::complete:*' gain-privileges 1
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%F{4}%r%f en %F{13} %b%f '

PROMPT='${vcs_info_msg_0_}%B%F{9}/>%f%b '
# PROMPT='%3~ ${vcs_info_msg_0_} %B%F{9}/>%f%b '
# RPROMPT='${vcs_info_msg_0_}'

autoload -Uz add-zsh-hook

function xterm_title_precmd () {
    print -Pn -- '\e]2;%n@%m %~\a'
    [[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

function xterm_title_preexec () {
    print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
    [[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|screen*|wezterm*|tmux*|xterm*) ]]; then
    add-zsh-hook -Uz precmd xterm_title_precmd
    add-zsh-hook -Uz preexec xterm_title_preexec
fi

alias ls="ls -Aho --color=auto"
alias tree="tree -ahL 1 --dirsfirst"

export CLICOLOR=1
export COLORTERM=truecolor
# export TERM=xterm-256color-italic
export MANPAGER="vim +MANPAGER --not-a-term -"
export GREP_OPTIONS="--color=auto"

# fpath=(~/.zsh/site-functions $fpath)

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

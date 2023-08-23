alias ls="ls -Aho"

export CLICOLOR=1
export COLORTERM=truecolor
export TERM=xterm-256color-italic
export MANPAGER="vim +MANPAGER --not-a-term -"
export GREP_OPTIONS="--color=auto"

# fpath=(~/.zsh/site-functions $fpath)

autoload -Uz compinit
autoload -Uz vcs_info
compinit

# zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
# zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
# zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:git:*' formats "%F{blue}%r%f on %F{magenta}$(echo -e "\uE0A0") %b%f"
precmd () { vcs_info }
setopt prompt_subst

# PS1="%F{blue}%3~ ⟫%f "
PS1='${vcs_info_msg_0_}
%F{yellow}⟫%f '

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

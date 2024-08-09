# bindkey -v

# zstyle ':completion:*' menu select
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%F{#62A0EA}%r%f %F{#C0C0C0}en%f %F{#C061CB} %b%f '

precmd () { vcs_info; print -Pn -- '\e]2;%n@%m \a' }
setopt prompt_subst
PROMPT='${vcs_info_msg_0_}%F{#ED333B}/>%f '
# PROMPT='%F{#ED333B}/>%f '
# RPROMPT='%F{green}%~%f'

function suspend () { fg }
zle -N suspend
bindkey '^Z' suspend

function clear () { printf '\x1Bc'; zle clear-screen }
zle -N clear
bindkey '^L' clear

typeset -g -A key
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"

[[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" forward-word

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>/ '$'\n'
autoload -Uz select-word-style
select-word-style normal
zstyle ':zle:*' word-style unspecified

# fpath=(~/.zsh/site-functions $fpath)

autoload -Uz compinit
autoload -Uz vcs_info
zmodload zsh/complist
autoload bashcompinit
bashcompinit
compinit

alias ls="ls -Ahl --color=auto --group-directories-first"
alias tree="tree -ahL 1 --dirsfirst"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias xfreerdp='xfreerdp /dynamic-resolution /gdi:hw /gfx:avc420 +gfx-progressive +async-input +async-update +auto-reconnect +clipboard -grab-keyboard /kbd:"Spanish" /kbd-lang:0x240a'

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

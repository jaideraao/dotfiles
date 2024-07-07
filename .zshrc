# bindkey -v

# fpath=(~/.zsh/site-functions $fpath)

autoload -Uz compinit
autoload -Uz vcs_info
autoload -Uz select-word-style
zmodload zsh/complist
autoload bashcompinit

bashcompinit
compinit

zstyle ':completion:*' menu select
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%F{#62A0EA}%r%f %F{#C0C0C0}en%f %F{#C061CB} %b%f '
zstyle ':zle:*' word-style unspecified

precmd () { vcs_info; print -Pn -- '\e]2;%n@%m \a' }

setopt prompt_subst

PROMPT='${vcs_info_msg_0_}%F{#ED333B}/>%f '
RPROMPT='%F{green}%~%f'

alias ls="ls -Ahl --color=auto --group-directories-first"
alias tree="tree -ahL 1 --dirsfirst"

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>/ '$'\n'
select-word-style normal

function zsh_cli_fg () { fg }
zle -N zsh_cli_fg
bindkey '^Z' zsh_cli_fg

function clear_screen_and_scrollback () { printf '\x1Bc'; zle clear-screen }
zle -N clear_screen_and_scrollback
bindkey '^L' clear_screen_and_scrollback

typeset -g -A key
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"

[[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" forward-word

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

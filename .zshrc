# bindkey -v

autoload -Uz compinit
compinit

autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst

zstyle ':completion:*' menu select
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%F{#62A0EA}%r%f %F{#C0C0C0}en%f %F{#C061CB} %b%f '

PROMPT='${vcs_info_msg_0_}%F{#ED333B}/>%f '
RPROMPT='%F{green}%~%f'

autoload -Uz add-zsh-hook

function xterm_title_precmd () {
    print -Pn -- '\e]2;%n@%m %~\a'
    # print -Pn -- '\e]2;%n@%m\a'
}

function xterm_title_preexec () {
    print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
    # print -Pn -- '\e]2;%n@%m %# ' && print -n -- "${(q)1}\a"
}

if [[ "$TERM" == (xterm*) ]]; then
    add-zsh-hook -Uz precmd xterm_title_precmd
    add-zsh-hook -Uz preexec xterm_title_preexec
fi

alias ls="ls -Ahl --color=auto --group-directories-first"
alias tree="tree -ahL 1 --dirsfirst"

# fpath=(~/.zsh/site-functions $fpath)

# autoload bashcompinit && bashcompinit
# autoload -Uz compinit && compinit
# complete -C '/usr/local/bin/aws_completer' aws

_zsh_cli_fg() { fg; }
zle -N _zsh_cli_fg
bindkey '^Z' _zsh_cli_fg

function clear_screen_and_scrollback () {
    printf '\x1Bc'
    zle clear-screen
}

zle -N clear_screen_and_scrollback
bindkey '^L' clear_screen_and_scrollback

typeset -g -A key
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"

[[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" forward-word

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

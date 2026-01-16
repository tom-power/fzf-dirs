# __append_to_prompt, __select_dir copied from
# https://github.com/pabloariasal/zfm/blob/master/zfm.zsh

function __append_to_prompt() {
    if [[ -z "$1" ]]; then
        zle reset-prompt
        return 0
    fi
    LBUFFER="${LBUFFER}$(echo "$1" | tr -d '\r\n')"
    local ret=$?
    zle reset-prompt
    return $ret
}

local __dirs

function __select_dir() {
    setopt localoptions pipefail no_aliases 2> /dev/null
    local opts="--reverse --exact --no-sort --cycle --height ${FZF_TMUX_HEIGHT:-40%} ${FZF_DIRS_DEFAULT_OPTS:-$FZF_DEFAULT_OPTS}"
    selected_dir="$(\
    echo $__dirs \
    | sed -re 's/^[[:space:]]*[0-9]+[[:space:]]+//' \
    | sed "s/^~/${HOME//\//\\/}/ig" \
    | FZF_DEFAULT_OPTS="$@ ${opts}" fzf \
    | awk '{print $1}' \
    )"
    __append_to_prompt "$selected_dir"
}

function fzf-dirs-recent() {
    __dirs=$(dirs -v | uniq | tail -n +2)
    __select_dir
}

zle -N fzf-dirs-recent
bindkey '^E' fzf-dirs-recent

function fzf-dirs-zfm() {    
    __dirs=$(zfm list --dirs | sed -E 's/[[:space:]]*\[d\][[:space:]]*$//')
    __select_dir
}

zle -N fzf-dirs-zfm
bindkey '^O' fzf-dirs-zfm

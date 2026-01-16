0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
FZF_DIRS_HOME="${0:A:h}"

source "$FZF_DIRS_HOME"/fzf-dirs.zsh

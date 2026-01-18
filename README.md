# fzf dirs

I like using `^O` to go a directory, and `^E` to go back to a visited directory, so wrote these [zle widgets](https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets) to help with that.

No plans for more than that at the moment, in which case the repo name is misleading :)

## Widgets

- `fzf-dirs-zfm` list bookmarked directories from [zfm](https://github.com/pabloariasal/zfm)
- `fzf-dirs` list recent directories from [dirs](https://ss64.com/bash/dirs.html), consider [dirpersist](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dirpersist) plugin for this

## Usage

```zsh
bindkey '^O' fzf-dirs-zfm # default
bindkey '^E' fzf-dirs # default
```

set `FZF_DIRS_DEFAULT_OPTS` to override `FZF_DEFAULT_OPTS` for these widgets i.e.

```zsh
export FZF_DIRS_DEFAULT_OPTS="\
--bind '?:toggle-preview' \
--height=90% \
--preview-window right,60% \
--preview 'eza --header --long --git --color=always {}' \
" 
```

## Install

Depends on [fzf](https://github.com/junegunn/fzf), [zfm](https://github.com/pabloariasal/zfm).

Install with a [plugin manager](https://github.com/rossmacarthur/zsh-plugin-manager-benchmark) of your choice or manually:

```sh
git clone https://github.com/tom-power/fzf-dirs && source fzf-dirs/fzf-dirs.plugin.zsh
```

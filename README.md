# fzf dirs

[zsh](https://zsh.sourceforge.io/) plugin + suggested options for selecting directories with [fzf](https://github.com/junegunn/fzf)

# Usage

- `fzf-dirs` recent directories from [dirs](https://ss64.com/bash/dirs.html)
- `fzf-dirs-zfm` bookmarked directories from [zfm](https://github.com/pabloariasal/zfm)

```zsh
bindkey '^E' fzf-dirs # default
bindkey '^O' fzf-dirs-zfm # default
```

set `FZF_DIRS_DEFAULT_OPTS` to override `FZF_DEFAULT_OPTS` for these widgets i.e.

```zsh
# check .lessfilter for dependencies
export FZF_DIRS_DEFAULT_OPTS="\
--bind '?:toggle-preview' \
--height=90% \
--preview-window right,100,hidden \
--preview '$FZF_DIRS_HOME/.lessfilter {}' \
" 
```

# Install

Depends on [fzf](https://github.com/junegunn/fzf), [zfm](https://github.com/pabloariasal/zfm).

Then install with a plugin manager of your choice or manually:

```sh
git clone https://github.com/tom-power/fzf-dirs && source fzf-dirs/fzf-dirs.plugin.zsh
```

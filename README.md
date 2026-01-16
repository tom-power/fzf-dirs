# fzf dirs

zsh plugin for listing directories with fzf

# Usage

- `fzf-dirs-recent` shows recently visited directories
- `fzf-dirs-zfm` shows directories bookmarked with zfm

```zsh
bindkey '^E' fzf-dirs-recent # this is the default
bindkey '^O' fzf-dirs-zfm # this is the default
```

set `FZF_DIRS_DEFAULT_OPTS` to override `FZF_DEFAULT_OPTS` for these widgets i.e.

```zsh
export FZF_DIRS_DEFAULT_OPTS="\
--bind '?:toggle-preview' \
--height=90% \
--preview-window right,100,hidden \
--preview '$ZSH_CUSTOM/fzf-tab/.lessfilter {}' \
"
```

# Install

Depends on [fzf](https://github.com/junegunn/fzf), [zfm](https://github.com/pabloariasal/zfm).

Then install with a plugin manager of your choice or manually:

```sh
git clone https://github.com/tom-power/fzf-dirs && source fzf-dirs/fzf-dirs.plugin.zsh
```

# Setup

## Install Neovim 0.8 or later

## Install AstroNvim

From [here](https://astronvim.github.io/)

### Summary

```bash
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

## Install the custom config
Clone the repository to `$HOME/.config/nvim/lua/user`

```bash
git clone <repo_url> ~/.config/nvim/lua/user
```

## Start nvim and sync the packages

1. Run `:PackerSync` or press `SPACE p s`
2. Exit `:q` or `SPACE q`

## Install linters, LSP etc

### Custom setup or multiple installs
`SPACE p I` or `:LspInstall <server name>` (`:LspInstall pyright`)

### Install LSP for the currently opened file type

`:LspInstall`

### Install language parser 

`TSInstall <language name>` (`:TSInstall python`)

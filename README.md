# nvim config

## requirements

* neovim `0.12`
    * requires builtin package manager `vim.pack`

## quickstart

```sh
git clone git@github.com:atkvo/nvim-cfg.git $HOME/.config/nvim
```

## notes

### lsp server enable override

> see `lsp/config/lsp.lua` for override logic

To override LSP providers for a project:

  1. create `.lspconfig.lua` in working directory
  2. return a table of servers to enable like below

```lua
    return {
        'ccls',
        'pyright',
    }
```

Usecase: mostly used for swapping between `ccls` and `clangd` depending on the project.


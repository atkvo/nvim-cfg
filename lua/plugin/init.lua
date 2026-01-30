vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.nvim' },

  { src = 'https://github.com/otavioschwanck/arrow.nvim' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/NMAC427/guess-indent.nvim' },
})

require('plugin/config/setup')

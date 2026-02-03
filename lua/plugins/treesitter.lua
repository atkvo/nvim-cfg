vim.defer_fn(function()
  require('nvim-treesitter').setup({
    ensure_installed = { 'c', 'cpp', 'lua', 'python', 'markdown' },
  })
end, 0)

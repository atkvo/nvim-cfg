require('plugin/config/mini')

require('gitsigns').setup()
require('guess-indent').setup()

require('arrow').setup({
  show_icons = true,
  leader_key = ';',
  buffer_leader_key = '<A-m>',
})

vim.defer_fn(function()
  require('nvim-treesitter').setup({
    ensure_installed = { 'c', 'cpp', 'lua', 'python', 'markdown' },
  })
end, 0)


vim.o.hlsearch = false
vim.o.incsearch = true

vim.wo.number = true
vim.o.number = true

vim.o.mouse = 'a'

vim.o.breakindent = true
vim.o.smartindent = true

vim.o.undofile = true

vim.o.smartcase = true
vim.wo.signcolumn = 'yes'

vim.o.termguicolors = true
vim.o.wrap = false
vim.o.cursorline = true

vim.o.cmdheight = 0
vim.cmd.colorscheme('miniwinter')

if vim.version().minor >= 12 then
  require('vim._extui').enable({
   enable = true, -- Whether to enable or disable the UI.
   msg = { -- Options related to the message module.
     ---@type 'cmd'|'msg' Where to place regular messages, either in the
     ---cmdline or in a separate ephemeral message window.
     target = 'msg',
     timeout = 4000, -- Time a message is visible in the message window.
   },
  })
end

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.wo.number = true
vim.opt.number = true

vim.opt.mouse = 'a'

vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

vim.opt.undofile = true

vim.opt.smartcase = true
vim.wo.signcolumn = 'yes'

vim.opt.splitkeep = 'screen'
vim.opt.winborder = 'single'
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.cursorline = true

vim.opt.list = true
vim.opt.listchars = {
    tab = '→ ',
    trail = '·',
    extends = '▶',
    precedes = '◀',
    nbsp = '⏑',
    multispace = '·', -- Optional: for 2+ consecutive spaces
}


vim.opt.cmdheight = 0
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

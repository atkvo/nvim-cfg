-- appearance modules
require('mini.animate').setup()
-- disable by default, turn on manually if needed (?)
vim.g.minianimate_disable = true
require('mini.cursorword').setup()
require('mini.hipatterns').setup()
require('mini.indentscope').setup()
require('mini.notify').setup()
require('mini.trailspace').setup()
require('mini.tabline').setup()

require('mini.ai').setup({ options = { extra_ui = true } })
require('mini.bufremove').setup()
require('mini.bracketed').setup()
require('mini.basics').setup()
require('mini.cmdline').setup()
require('mini.completion').setup()
require('mini.diff').setup()
require('mini.extra').setup()
require('mini.files').setup({ windows = { preview = true } })
require('mini.icons').setup()
require('mini.jump').setup()
require('mini.jump2d').setup()
require('mini.pick').setup()
require('mini.sessions').setup({
  file = '.session.vim'
})

require('mini.surround').setup({
  mappings = {
    add = 'ma', -- Add surrounding in Normal and Visual modes
    delete = 'md', -- Delete surrounding
    find = 'mm', -- Find surrounding (to the right)
    find_left = 'mM', -- Find surrounding (to the left)
    highlight = 'mh', -- Highlight surrounding
    replace = 'mr', -- Replace surrounding

    suffix_last = 'l', -- Suffix to search with "prev" method
    suffix_next = 'n', -- Suffix to search with "next" method
  },
})

local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    -- Leader triggers
    { mode = { 'n', 'x' }, keys = '<Leader>' },

    -- `[` and `]` keys
    { mode = 'n', keys = '[' },
    { mode = 'n', keys = ']' },

    -- Built-in completion
    { mode = 'i', keys = '<C-x>' },

    -- `g` key
    { mode = { 'n', 'x' }, keys = 'g' },

    -- Marks
    { mode = { 'n', 'x' }, keys = "'" },
    { mode = { 'n', 'x' }, keys = '`' },

    -- Registers
    { mode = { 'n', 'x' }, keys = '"' },
    { mode = { 'i', 'c' }, keys = '<C-r>' },

    -- Window commands
    { mode = 'n', keys = '<C-w>' },

    -- `z` key
    { mode = { 'n', 'x' }, keys = 'z' },
  },

  clues = {
    -- Enhance this by adding descriptions for <Leader> mapping groups
    miniclue.gen_clues.square_brackets(),
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),

    { mode = 'n', keys = '<Leader>b', desc = '+Buffer' },
    { mode = 'n', keys = '<Leader>e', desc = '+Explore/Edit' },
    { mode = 'n', keys = '<Leader>f', desc = '+Find' },
    { mode = 'n', keys = '<Leader>o', desc = '+Other' },
    { mode = 'n', keys = '<Leader>os', desc = '+Session' },
    { mode = 'x', keys = '<Leader>g', desc = '+Git' },
  },

  window = {
    delay = 50,
    config = {
        width = 'auto'
    },
  },

})

local starter = require('mini.starter')
starter.setup({
  evaluate_single = false,
  header = '',
  query_updaters = 'abcdefghijklmnopqrstuvwxyz0123456789_-.',
  items = {
    starter.sections.recent_files(10, true),
    starter.sections.sessions(5, true),
    starter.sections.pick(),
    starter.sections.builtin_actions(),
  },
  content_hooks = {
    starter.gen_hook.aligning('center', 'center'),
    starter.gen_hook.adding_bullet(),
    -- starter.gen_hook.indexing('all', { 'Builtin actions' }),
    -- starter.gen_hook.padding(10, 10),
  },
})

require('mini.statusline').setup({
  use_icons = true,
  content = {
    function()
      local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
      local git           = MiniStatusline.section_git({ trunc_width = 40 })
      local diff          = MiniStatusline.section_diff({ trunc_width = 75 })
      local diagnostics   = MiniStatusline.section_diagnostics({ trunc_width = 75 })
      local lsp           = MiniStatusline.section_lsp({ trunc_width = 75 })
      local filename      = MiniStatusline.section_filename({ trunc_width = 140 })
      local fileinfo      = MiniStatusline.section_fileinfo({ trunc_width = 120 })
      local location      = MiniStatusline.section_location({ trunc_width = 75 })
      local search        = MiniStatusline.section_searchcount({ trunc_width = 75 })

      return MiniStatusline.combine_groups({
        { hl = mode_hl,                  strings = { mode } },
        { hl = 'MiniStatuslineDevinfo',  strings = { git, diff, diagnostics, lsp } },
        '%<', -- Mark general truncate point
        { hl = 'MiniStatuslineFilename', strings = { filename } },
        '%=', -- End left alignment
        { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
        { hl = mode_hl,                  strings = { search, location } },
      })
    end
  },
})

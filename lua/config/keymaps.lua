vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap
map.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
map.set('n', '<C-k>', '<C-w>k', { silent = true })
map.set('n', '<C-j>', '<C-w>j', { silent = true })
map.set('n', '<C-h>', '<C-w>h', { silent = true })
map.set('n', '<C-l>', '<C-w>l', { silent = true })

-- Resize splits using Alt + hjkl
map.set('n', '<A-h>', ':vertical resize -2<CR>', { silent = true })
map.set('n', '<A-l>', ':vertical resize +2<CR>', { silent = true })
map.set('n', '<A-j>', ':resize -2<CR>', { silent = true })
map.set('n', '<A-k>', ':resize +2<CR>', { silent = true })

map.set('n', '<leader>\'', '<Cmd>Pick resume<CR>', { desc = 'Pick resume' })
map.set('n', '<leader>f', '<Cmd>Pick files<CR>', { desc = 'Pick files' })
map.set('n', '<leader>b', '<Cmd>Pick buffers<CR>', { desc = 'Pick buffers' })
map.set('n', '<leader>g', '<Cmd>Pick git_files scope="modified"<CR>', { desc = 'Pick changed files' })
map.set('n', '<leader>q', '<Cmd>Pick list scope="quickfix"<CR>', { desc = 'Pick quickfix' })

map.set('n', '<leader>s', '<Cmd>Pick lsp scope="document_symbol"<CR>', { desc = 'Pick symbols' })
map.set('n', '<leader>S', '<Cmd>Pick lsp scope="workspace_symbol_live"<CR>', { desc = 'Pick symbols' })

map.set('n', '<leader>ee', '<Cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0), false)<CR>', { desc = 'File directory' })
map.set('n', '<leader>eE', '<Cmd>lua MiniFiles.open(nil, false)<CR>', { desc = 'Directory' })
map.set('n', '<leader>/G', '<Cmd>Pick grep_live<CR>', { desc = 'Search workspace' })
map.set('n', '<leader>/g', '<Cmd>Pick buf_lines scope="current"<CR>', { desc = 'Search buffer' })
map.set('n', '<leader>/h', '<Cmd>Pick git_hunks<CR>', { desc = 'Search hunks' })
map.set('n', '<leader>/c', '<Cmd>Pick git_commits<CR>', { desc = 'Search commits' })

map.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' } )

local session_new = 'MiniSessions.write(vim.fn.input("Session name: "))'
map.set('n', '<leader>osn', '<Cmd>lua ' .. session_new .. '<CR>',        { desc = 'New' })
map.set('n', '<leader>osr', '<Cmd>lua MiniSessions.select("read")<CR>', { desc = 'Resume' })
map.set('n', '<leader>oss', '<Cmd>lua MiniSessions.select()<CR>',       { desc = 'Select' })
map.set('n', '<leader>osu', '<Cmd>lua MiniSessions.write()<CR>',        { desc = 'Update' })

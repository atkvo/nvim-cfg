vim.api.nvim_create_user_command(
  'PackClean',
  function()
    local inactive = vim.iter(vim.pack.get())
     :filter(function(x) return not x.active end)
     :map(function(x) return x.spec.name end)
     :totable()

    vim.pack.del(inactive)
  end,
  {
    nargs = 0, -- Takes no arguments
    desc = 'Clean up inactive packages' -- Description for help
  }
)

vim.api.nvim_create_user_command(
  'Bd',
  function()
    MiniBufremove.delete()
  end,
  {
    nargs = 0,
    desc = 'Delete buffer while preserving splits'
  }
)

vim.api.nvim_create_user_command(
  'Trim',
  function()
    MiniTrailspace.trim()
    MiniTrailspace.trim_last_lines()
  end,
  {
    nargs = 0,
    desc = 'Trim file'
  }
)

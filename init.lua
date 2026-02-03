-- require('plugin/init')
--
-- require('config/options')
-- require('config/keymaps')
-- require('config/lsp')
--
-- require('config/autocommands')
-- require('config/usercommands')

vim.g.mapleader = " "

local modules = {
  "plugins.init",
  "config.options",
  "config.keymaps",
  "config.autocmds",
  "config.usercmds",
  "config.lsp",
}

for _, module in ipairs(modules) do
  local ok, err = pcall(require, module)
  if not ok then
    print("Error loading " .. module .. ": " .. err)
  end
end

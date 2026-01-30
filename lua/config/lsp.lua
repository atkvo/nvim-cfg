local lsp_config_file = 'lspconfig.lua'
local lsp_config_path = vim.fn.fnamemodify(vim.fn.getcwd() .. '/' .. lsp_config_file, ":p")

-- setup the default LSP servers to enable
lsp_list = { 'clangd', 'pyright' }
if vim.fn.filereadable(lsp_config_path) == 1 then
  lsp_list = dofile(lsp_config_path)
end

vim.lsp.enable(lsp_list)

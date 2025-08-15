-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.number = false
vim.opt.relativenumber = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true
vim.o.updatetime = 999999
vim.g.hover_enabled = false
vim.o.updatetime = 999999
vim.g.hover_enabled = false

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if client then
      client.server_capabilities.signatureHelpProvider = nil
    end
  end,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(function() end, {})

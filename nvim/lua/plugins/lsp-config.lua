return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    vim.o.updatetime = 999999
    return opts
  end,
}

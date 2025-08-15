vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI", "CursorMoved", "CursorMovedI" }, {
  callback = function()
    vim.lsp.buf.clear_references()
    return true
  end,
})

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  keys = {
    {
      "L",
      function()
        vim.cmd("bnext " .. vim.v.count1)
      end,
      desc = "Next buffer",
    },
    {
      "H",
      function()
        vim.cmd("bprev " .. vim.v.count1)
      end,
      desc = "Previous buffer",
    },
    {
      "]b",
      function()
        vim.cmd("bnext " .. vim.v.count1)
      end,
      desc = "Next buffer",
    },
    {
      "[b",
      function()
        vim.cmd("bprev " .. vim.v.count1)
      end,
      desc = "Previous buffer",
    },
  },
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        separator_style = "slant", -- "slant", "thick", or "thin"
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        always_show_bufferline = true,
      },
    })
  end,
}

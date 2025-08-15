return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader><leader>",
      function()
        require("telescope.builtin").find_files({
          cwd = vim.fn.expand("~"),
          hidden = true,
        })
      end,
      desc = "Find Files (Home Directory)",
    },
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({
          cwd = vim.fn.expand("~"),
          hidden = true,
        })
      end,
      desc = "Find Files (Home Directory)",
    },
  },
  opts = {
    defaults = {
      cwd = vim.fn.expand("~"),
    },
  },
}

return {
  "echasnovski/mini.files",
  keys = {
    {
      "<leader>e",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (directory of current file)",
    },
    {
      "<leader>E",
      function()
        require("mini.files").open(vim.uv.cwd(), true)
      end,
      desc = "Open mini.files (cwd)",
    },
    {
      "<leader>fm",
      function()
        require("mini.files").open(LazyVim.root(), true)
      end,
      desc = "Open mini.files (root)",
    },
  },
  opts = {
    windows = {
      preview = true,
      width_focus = 30,
      width_preview = 30,
    },
    options = {
      use_as_default_explorer = true,
    },
  },
  init = function()
    -- Remove LazyVim's default file explorer auto-open
    pcall(vim.api.nvim_del_augroup_by_name, "LazyVim_Files")

    -- Force override any existing keymaps after plugins load
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        -- Remove any existing keymaps
        pcall(vim.keymap.del, "n", "<leader>e")
        pcall(vim.keymap.del, "n", "<leader>E")
        pcall(vim.keymap.del, "n", "<leader>fe")

        -- Set our keymaps with high priority
        vim.keymap.set("n", "<leader>e", function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end, { desc = "Open mini.files (directory of current file)" })

        vim.keymap.set("n", "<leader>E", function()
          require("mini.files").open(vim.uv.cwd(), true)
        end, { desc = "Open mini.files (cwd)" })
      end,
    })

    -- Auto-open mini.files if starting in a directory
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function(data)
        if vim.fn.isdirectory(data.file) == 1 then
          require("mini.files").open(data.file, true)
        end
      end,
    })
  end,
  config = function(_, opts)
    require("mini.files").setup(opts)
  end,
}

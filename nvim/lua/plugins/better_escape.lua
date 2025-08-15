return {
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup({
        mapping = { "jk" },
        timeout = 300,
        clear_empty_lines = false,
        keys = "<Esc>",
      })
    end,
  },
}

return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "none",
      ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<Tab>"] = { "accept", "fallback" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<CR>"] = { "fallback" },
    },
    completion = {
      trigger = {
        show_on_insert_on_trigger_character = false,
        show_on_keyword = false,
        show_on_trigger_character = false,
      },
      ghost_text = {
        enabled = false,
      },
      menu = {
        auto_show = false,
      },
    },
    signature = {
      enabled = false,
    },
  },
}

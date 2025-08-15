return {
  "hrsh7th/nvim-cmp",
  opts = function()
    local cmp = require("cmp")

    return {
      completion = {
        autocomplete = false,
      },
      experimental = {
        ghost_text = false,
      },
      mapping = {
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
        ["<CR>"] = function(fallback)
          fallback()
        end,
      },
    }
  end,
}

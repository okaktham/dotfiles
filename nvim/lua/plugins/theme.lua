return {
  {
    "mcchrish/zenbones.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      vim.o.background = "dark"
      vim.cmd.colorscheme("zenwritten")

      -- Base UI
      vim.api.nvim_set_hl(0, "Normal", { bg = "#0a0a0a", fg = "#cfcfcf" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010", fg = "#cfcfcf" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "#0a0a0a" })
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#555555", bg = "#0a0a0a" })
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#aaaaaa", bg = "#0a0a0a", bold = true })
      vim.api.nvim_set_hl(0, "CursorLine", { bg = "#151515" })

      -- Minimal highlighting
      vim.api.nvim_set_hl(0, "Comment", { fg = "#777777", italic = true })
      vim.api.nvim_set_hl(0, "Search", { bg = "#444433", fg = "#ffffff" })
      vim.api.nvim_set_hl(0, "IncSearch", { bg = "#666644", fg = "#ffffff" })

      -- Status/tab lines
      vim.api.nvim_set_hl(0, "StatusLine", { bg = "#1a1a1a", fg = "#b0b0b0" })
      vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#0f0f0f", fg = "#707070" })
      vim.api.nvim_set_hl(0, "TabLine", { bg = "#1a1a1a", fg = "#808080" })
      vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#0a0a0a" })
      vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#2a2a2a", fg = "#cfcfcf", bold = true })

      -- Popup menus
      vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1a1a1a", fg = "#c0c0c0" })
      vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#2a2a2a", fg = "#ffffff" })
      vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#2a2a2a" })
      vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#555555" })

      -- Git signs
      vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#888888" })
      vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#888888" })
      vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#888888" })

      -- Diagnostics
      vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#aaaaaa" })
      vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#aaaaaa" })
      vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#aaaaaa" })
      vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#aaaaaa" })

      -- Tree-sitter: disable colors
      local ts_groups = {
        "@string",
        "@number",
        "@boolean",
        "@function",
        "@keyword",
        "@type",
        "@variable",
        "@constant",
        "@comment",
        "@punctuation",
        "@tag",
        "@attribute",
      }
      for _, group in ipairs(ts_groups) do
        vim.api.nvim_set_hl(0, group, { fg = "#cfcfcf" })
      end
      vim.api.nvim_set_hl(0, "@comment", { fg = "#777777", italic = true })
    end,
  },
}

return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      disable_filetype = { "TelescopePrompt", "spectre_panel" },
      check_ts = false,
      enable_check_bracket_line = false,
      ignored_next_char = "[%w%.]",
      enable_moveright = false,
      disable_in_macro = false,
      disable_in_visualblock = false,
      fast_wrap = {
        map = false,
      },
    })

    local Rule = require("nvim-autopairs.rule")
    local cond = require("nvim-autopairs.conds")
    local npairs = require("nvim-autopairs")

    -- Remove the default ( ) rule
    npairs.remove_rule("(")

    -- Add a smarter ( ) rule that doesn't pair after word characters
    npairs.add_rule(Rule("(", ")")
      :with_pair(cond.not_after_regex("[%w_]", 1)) -- Don't pair if preceded by word/underscore
      :with_move(function(opts)
        return opts.char == ")"
      end))

    -- Fix quote behavior - remove and re-add with better logic
    npairs.remove_rule('"')
    npairs.add_rule(Rule('"', '"')
      :with_pair(cond.not_after_regex("[%w]", 1)) -- Don't pair after word characters
      :with_pair(cond.not_before_regex("[%w]", 1)) -- Don't pair before word characters
      :with_move(function(opts)
        return opts.char == '"'
      end))

    npairs.add_rules({
      Rule(">", "\n", "html"):with_move(cond.none()):with_cr(cond.none()):use_key("<CR>"),
    })
  end,
}

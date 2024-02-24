return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    local colors = require("material.colors")
    local highlight = {
      "RainbowRed",
      -- "RainbowOrange",
      "RainbowYellow",
      "RainbowGreen",
      "RainbowBlue",
      -- "RainbowCyan",
      "RainbowViolet",
    }
    local hooks = require("ibl.hooks")
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = colors.main.red })
      -- vim.api.nvim_set_hl(0, "RainbowOrange", { fg = colors.main.orange })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = colors.main.yellow })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = colors.main.green })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = colors.main.blue })
      -- vim.api.nvim_set_hl(0, "RainbowCyan", { fg = colors.main.cyan })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = colors.main.purple })
    end)

    vim.g.rainbow_delimiters = { highlight = highlight }
    require("ibl").setup({
      scope = {
        highlight = highlight,
        enabled = false, -- enable scope indent color
        show_start = false,
        show_end = false,
      },
    })
    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  end,
}
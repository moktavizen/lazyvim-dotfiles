return {
  "HiPhish/rainbow-delimiters.nvim",
  config = function()
    local colors = require("material.colors")
    require("rainbow-delimiters.setup").setup({
      define_hlgroups = function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = colors.main.red })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = colors.main.orange })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = colors.main.yellow })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = colors.main.green })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = colors.main.blue })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = colors.main.cyan })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = colors.main.purple })
      end,
    })
  end,
}

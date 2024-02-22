return {
  -- remove mini,indentscope animation
  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = { animation = require("mini.indentscope").gen_animation.none() },
    },
  },

  -- additional syntax highlight
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "hyprlang",
      },
    },
    vim.filetype.add({
      pattern = { [".*/hypr.*%.conf"] = "hyprlang" },
    }),
  },

  -- material theme
  {
    "marko-cerovac/material.nvim",
    config = function()
      local colors = require("material.colors")
      require("material").setup({

        contrast = {
          terminal = true, -- Enable contrast for the built-in terminal
          sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
          floating_windows = true, -- Enable contrast for floating windows
          cursor_line = true, -- Enable darker background for the cursor line
          non_current_windows = false, -- Enable contrasted background for non-current windows
          filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
        },

        plugins = { -- Uncomment the plugins that you use to highlight them
          -- Available plugins:
          "dap",
          "dashboard",
          "eyeliner",
          "fidget",
          "flash",
          "gitsigns",
          "harpoon",
          "hop",
          "illuminate",
          "indent-blankline",
          "lspsaga",
          "mini",
          "neogit",
          "neotest",
          "neo-tree",
          "neorg",
          "noice",
          "nvim-cmp",
          "nvim-navic",
          "nvim-tree",
          "nvim-web-devicons",
          "rainbow-delimiters",
          "sneak",
          "telescope",
          "trouble",
          "which-key",
          "nvim-notify",
        },

        custom_colors = function(colors)
          colors.editor.accent = colors.main.blue -- changing accent to blue
          colors.editor.contrast = colors.editor.bg -- removing LazyVim top darker bar
        end, -- If you want to override the default colors, set this to a function

        custom_highlights = {
          MiniIndentscopeSymbol = { fg = colors.main.blue },
        }, -- Overwrite highlights with your own
      })
    end,
  },

  -- Configure LazyVim to load material theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material-darker",
    },
  },
}

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "hyprlang",
      "css",
    },
  },
  vim.filetype.add({ -- add hyprlang filetype
    pattern = { [".*/hypr.*%.conf"] = "hyprlang" },
  }),
}

return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, {
        "hyprlang",
        "css",
      })
    end
  end,
  -- add hyprlang filetype
  vim.filetype.add({
    pattern = { [".*/hypr.*%.conf"] = "hyprlang" },
  }),
}

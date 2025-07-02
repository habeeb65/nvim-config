return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<leader>t]],
      direction = "float", -- can also be 'horizontal' or 'vertical'
      shade_terminals = true,
      start_in_insert = true,
    })
  end,
}

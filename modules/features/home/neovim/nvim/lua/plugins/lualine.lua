return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-mini/mini.icons", lazy = true },
  config = function()
    require("lualine").setup({})
  end
}

return { 
  "nvim-mini/mini.nvim",
  version = false,
  config = function()
    require("mini.ai").setup()
    require("mini.comment").setup()
    require("mini.move").setup()
    require("mini.pairs").setup()
    require("mini.splitjoin").setup()
    require("mini.surround").setup()
  end,
}

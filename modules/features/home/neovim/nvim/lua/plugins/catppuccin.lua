return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      integrations = {
        harpoon = true
      },
    },
    config = function ()
      vim.cmd.colorscheme "catppuccin-mocha"
    end,
  },
}

return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      skip_confirm_for_simple_edits = true,

      win_options = {
        signcolumn = "yes:2",
      },
    },
    dependencies = {
      { "nvim-mini/mini.icons", opts = {} },
    },
    lazy = false,
    keys = {
      { "<leader>e", "<cmd>Oil<CR>", desc = "Open File Navigation" }
    }
  },
  {
    "refractalize/oil-git-status.nvim",
    dependencies = { "stevearc/oil.nvim" },
    config = true,
  },
}

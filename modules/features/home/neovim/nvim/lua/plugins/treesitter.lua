return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    ensure_installed = { 
      "lua",
      "nix",
      "zig",
    },
    highlight = { enable = true },
    indent = { enable = true },
    autotage = { enable = true },
  },
    auto_install = false,
}


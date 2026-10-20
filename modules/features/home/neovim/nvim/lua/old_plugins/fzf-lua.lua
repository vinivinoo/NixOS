return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-mini/mini.icons", lazy = true },
  cmd = "FzfLua",
  keys = {
    --- Find ---
    { "<leader>ff", "<cmd>FzfLua files<CR>", desc = "Find Files" },
    { "<leader>fF", "<cmd>FzfLua files cwd=~<CR>", desc = "Find Files (Home Directory)" },
    { "<leader>fc", "<cmd>FzfLua files cwd=~/nixos<CR>", desc = "Find in Config" },
    { "<leader>fg", "<cmd>FzfLua live_grep<CR>", desc = "Find Files" },
    { "<leader>fb", "<cmd>FzfLua buffers<CR>", desc = "Find Files" },
    { "<leader>fh", "<cmd>FzfLua helptags<CR>", desc = "Find Files" },
    { "<leader>fd", "<cmd>FzfLua zoxide<CR>", desc = "Change cwd" },
    { "<leader>fr", "<cmd>FzfLua resume<CR>", desc = "Find Resume" },

    --- git ---
    { "<leader>gc", "<cmd>FzfLua git_commits<CR>", desc = "Git Commits" },
    { "<leader>gd", "<cmd>FzfLua git_diff<CR>", desc = "Git Diff" },
    { "<leader>gs", "<cmd>FzfLua git_status<CR>", desc = "Git Status" },
    { "<leader>gS", "<cmd>FzfLua git_stash<CR>", desc = "Git Stash" },

    --- search ---
    { '<leader>s"', "<cmd>FzfLua registers<CR>", desc = "Search Registers" },
    { "<leader>s/", "<cmd>FzfLua search_history<CR>", desc = "Search Search History" },
    { "<leader>s:", "<cmd>FzfLua command_history<CR>", desc = "Search Command History" },
    { "<leader>sb", "<cmd>FzfLua lines<CR>", desc = "Search Buffer Lines" },
    { "<leader>sc", "<cmd>FzfLua commands<CR>", desc = "Search Commands" },
    { "<leader>sD", "<cmd>FzfLua diagnostics_workspace<CR>", desc = "Search Diagnostics" },
    { "<leader>sd", "<cmd>FzfLua diagnostics_document<CR>", desc = "Search Diagnostics Buffer" },
    { "<leader>sk", "<cmd>FzfLua keymaps<CR>", desc = "Search Keymaps" },
    { "<leader>sl", "<cmd>FzfLua loclist<CR>", desc = "Search Loclist" },
    { "<leader>sM", "<cmd>FzfLua manpages<CR>", desc = "Search Manpages" },
    { "<leader>sm", "<cmd>FzfLua marks<CR>", desc = "Search Marks" },
    { "<leader>sq", "<cmd>FzfLua quickfix<CR>", desc = "Search Quickfix List" },

  },
  opts = {
    keymap = {
      builtin = {
        true,
        ["<C-d>"] = "preview-page-down",
        ["<C-u>"] = "preview-page-up",
      },
    },
  },
}


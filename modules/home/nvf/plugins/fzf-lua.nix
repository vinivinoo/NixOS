{
  programs.nvf.settings.vim = {
    fzf-lua = {
      enable = true;
      setupOpts = {
        fzf_opts = {
          "--no-scrollbar" = true;
        };
      };
    };
    keymaps = [
      # --- find ---
      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>lua require('fzf-lua').buffers()<cr>";
        silent = true;
        desc = "Find Buffers";
      }
      {
        mode = "n";
        key = "<leader>fc";
        action = "<cmd>lua require('fzf-lua').files({ cwd = '/home/vini/nixos' })<cr>";
        silent = true;
        desc = "Find in Config";
      }
      {
        mode = "n";
        key = "<leader>fd";
        action = "<cmd>lua require('fzf-lua').zoxide()<cr>";
        silent = true;
        desc = "Find Directory";
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>lua require('fzf-lua').files()<cr>";
        silent = true;
        desc = "Find Files";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = "<cmd>lua require('fzf-lua').git_files()<cr>";
        silent = true;
        desc = "Find Gitfiles";
      }
      {
        mode = "n";
        key = "<leader>fr";
        action = "<cmd>lua require('fzf-lua').oldfiles()<cr>";
        silent = true;
        desc = "Find Recent";
      }
      # --- git ---
      {
        mode = "n";
        key = "<leader>gc";
        action = "<cmd>lua require('fzf-lua').git_commits()<cr>";
        desc = "Git Commits";
      }
      {
        mode = "n";
        key = "<leader>gd";
        action = "<cmd>lua require('fzf-lua').git_diff()<cr>";
        desc = "Git Diff";
      }
      {
        mode = "n";
        key = "<leader>gs";
        action = "<cmd>lua require('fzf-lua').git_status()<cr>";
        desc = "Git Status";
      }
      {
        mode = "n";
        key = "<leader>gS";
        action = "<cmd>lua require('fzf-lua').git_stash()<cr>";
        desc = "Git Stash";
      }
      # --- search ---
      {
        mode = "n";
        key = ''<leader>s"'';
        action = "<cmd>lua require('fzf-lua').registers()<cr>";
        desc = "Search Registers";
      }
      {
        mode = "n";
        key = "<leader>s/";
        action = "<cmd>lua require('fzf-lua').search_history()<cr>";
        desc = "Search History";
      }
      {
        mode = "n";
        key = "<leader>s:";
        action = "<cmd>lua require('fzf-lua').command_history()<cr>";
        silent = true;
        desc = "Command History";
      }
      {
        mode = "n";
        key = "<leader>sb";
        action = "<cmd>lua require('fzf-lua').lines()<cr>";
        desc = "Search Buffer Lines";
      }
      {
        mode = "n";
        key = "<leader>sc";
        action = "<cmd>lua require('fzf-lua').commands()<cr>";
        desc = "Search Commands";
      }
      {
        mode = "n";
        key = "<leader>sd";
        action = "<cmd>lua require('fzf-lua').diagnostics_workspace()<cr>";
        desc = "Search Diagnostics";
      }
      {
        mode = "n";
        key = "<leader>sD";
        action = "<cmd>lua require('fzf-lua').diagnostics_document()<cr>";
        desc = "Search Buffer Diagnostics";
      }
      {
        mode = "n";
        key = "<leader>sg";
        action = "<cmd>lua require('fzf-lua').live_grep()<cr>";
        desc = "Search Grep";
      }
      {
        mode = "n";
        key = "<leader>sh";
        action = "<cmd>lua require('fzf-lua').help_tags()<cr>";
        desc = "Search Help Pages";
      }
      {
        mode = "n";
        key = "<leader>sj";
        action = "<cmd>lua require('fzf-lua').jumps()<cr>";
        desc = "Search Jumps";
      }
      {
        mode = "n";
        key = "<leader>sk";
        action = "<cmd>lua require('fzf-lua').keymaps()<cr>";
        desc = "Search Keymaps";
      }
      {
        mode = "n";
        key = "<leader>sl";
        action = "<cmd>lua require('fzf-lua').loclist()<cr>";
        desc = "Search Location List";
      }
      {
        mode = "n";
        key = "<leader>sM";
        action = "<cmd>lua require('fzf-lua').man_pages()<cr>";
        desc = "Search Man Pages";
      }
      {
        mode = "n";
        key = "<leader>sm";
        action = "<cmd>lua require('fzf-lua').marks()<cr>";
        desc = "Search Marks";
      }
      {
        mode = "n";
        key = "<leader>sR";
        action = "<cmd>lua require('fzf-lua').resume()<cr>";
        desc = "Resume";
      }
      {
        mode = "n";
        key = "<leader>sq";
        action = "<cmd>lua require('fzf-lua').quickfix()<cr>";
        desc = "Search QuickfixList";
      }
    ];
    luaConfigRC.keymap-unfolds = ''
      vim.keymap.del('n', '<leader><space>h')
      vim.keymap.del('n', '<leader><space>j')
      vim.keymap.del('n', '<leader><space>k')
      vim.keymap.del('n', '<leader><space>l')
    '';
  };
}

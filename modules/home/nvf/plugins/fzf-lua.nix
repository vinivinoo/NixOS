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
        desc = "Buffers";
      }
      {
        mode = "n";
        key = "<leader>fc";
        action = "<cmd>lua require('fzf-lua').files({ cwd='/home/vini/nixos' })<cr>";
        silent = true;
        desc = "Config";
      }
      {
        mode = "n";
        key = "<leader>fd";
        action = "<cmd>lua require('fzf-lua').zoxide()<cr>";
        silent = true;
        desc = "Directory";
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>lua require('fzf-lua').files()<cr>";
        silent = true;
        desc = "Files";
      }
      {
        mode = "n";
        key = "<leader>fF";
        action = "<cmd>lua require('fzf-lua').files({ cwd='/home/vini' })<cr>";
        silent = true;
        desc = "Files (Home Directory)";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = "<cmd>lua require('fzf-lua').git_files()<cr>";
        silent = true;
        desc = "Gitfiles";
      }
      {
        mode = "n";
        key = "<leader>fr";
        action = "<cmd>lua require('fzf-lua').oldfiles()<cr>";
        silent = true;
        desc = "Recent";
      }
      # --- git ---
      {
        mode = "n";
        key = "<leader>gc";
        action = "<cmd>lua require('fzf-lua').git_commits()<cr>";
        desc = "Commits";
      }
      {
        mode = "n";
        key = "<leader>gd";
        action = "<cmd>lua require('fzf-lua').git_diff()<cr>";
        desc = "Diff";
      }
      {
        mode = "n";
        key = "<leader>gs";
        action = "<cmd>lua require('fzf-lua').git_status()<cr>";
        desc = "Status";
      }
      {
        mode = "n";
        key = "<leader>gS";
        action = "<cmd>lua require('fzf-lua').git_stash()<cr>";
        desc = "Stash";
      }
      # --- search ---
      {
        mode = "n";
        key = ''<leader>s"'';
        action = "<cmd>lua require('fzf-lua').registers()<cr>";
        desc = "Registers";
      }
      {
        mode = "n";
        key = "<leader>s/";
        action = "<cmd>lua require('fzf-lua').search_history()<cr>";
        desc = "History";
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
        desc = "Buffer Lines";
      }
      {
        mode = "n";
        key = "<leader>sc";
        action = "<cmd>lua require('fzf-lua').commands()<cr>";
        desc = "Commands";
      }
      {
        mode = "n";
        key = "<leader>sd";
        action = "<cmd>lua require('fzf-lua').diagnostics_workspace()<cr>";
        desc = "Diagnostics";
      }
      {
        mode = "n";
        key = "<leader>sD";
        action = "<cmd>lua require('fzf-lua').diagnostics_document()<cr>";
        desc = "Buffer Diagnostics";
      }
      {
        mode = "n";
        key = "<leader>sg";
        action = "<cmd>lua require('fzf-lua').live_grep()<cr>";
        desc = "Grep";
      }
      {
        mode = "n";
        key = "<leader>sh";
        action = "<cmd>lua require('fzf-lua').help_tags()<cr>";
        desc = "Help Pages";
      }
      {
        mode = "n";
        key = "<leader>sj";
        action = "<cmd>lua require('fzf-lua').jumps()<cr>";
        desc = "Jumps";
      }
      {
        mode = "n";
        key = "<leader>sk";
        action = "<cmd>lua require('fzf-lua').keymaps()<cr>";
        desc = "Keymaps";
      }
      {
        mode = "n";
        key = "<leader>sl";
        action = "<cmd>lua require('fzf-lua').loclist()<cr>";
        desc = "Location List";
      }
      {
        mode = "n";
        key = "<leader>sM";
        action = "<cmd>lua require('fzf-lua').man_pages()<cr>";
        desc = "Man Pages";
      }
      {
        mode = "n";
        key = "<leader>sm";
        action = "<cmd>lua require('fzf-lua').marks()<cr>";
        desc = "Marks";
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
        desc = "Quickfix List";
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

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
      {
        mode = "n";
        key = "<leader><space>";
        action = "<CMD>lua require('fzf-lua').files({ cwd = vim.uv.cwd() })<CR>";
        silent = true;
        desc = "Fzf [ ] Find Files (Root Dir)";
      }
      {
        mode = "n";
        key = "<leader>/";
        action = "<CMD>lua require('fzf-lua').live_grep({ cwd = vim.uv.cwd() })<CR>";
        silent = true;
        desc = "Fzf [/] Grep (Root Dir)";
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = "<CMD>lua require('fzf-lua').files()<CR>";
        silent = true;
        desc = "Fzf [F]ind [F]iles";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = "<CMD>lua require('fzf-lua').live_grep()<CR>";
        silent = true;
        desc = "Fzf [F]ind by [G]rep";
      }
      {
        mode = "n";
        key = "<leader>fb";
        action = "<CMD>lua require('fzf-lua').buffers()<CR>";
        silent = true;
        desc = "Fzf [F]ind [B]uffers";
      }
      {
        mode = "n";
        key = "<leader>fh";
        action = "<CMD>lua require('fzf-lua').help_tags()<CR>";
        silent = true;
        desc = "Fzf [F]ind [H]elp";
      }
    ];
  };
}

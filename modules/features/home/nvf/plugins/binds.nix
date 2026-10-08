{
  programs.nvf.settings.vim = {
    binds = {
      whichKey = {
        enable = true;
        setupOpts = {
          preset = "helix";
        };
        register = {
          "<leader>f" = "Files/Find";
          "<leader>c" = "Code";
          "<leader>g" = "Git";
          "<leader>o" = "Obsidian";
          "<leader>s" = "Search";
          "<leader>x" = "Diagnostics/Quickfix";
          "<leader>q" = "Quit/Session";
          "g" = "Goto";
          "gs" = "Surround";
          "z" = "Fold";
          "[" = "Previous";
          "]" = "Next";
          "<leader>[" = "Previous";
          "<leader>]" = "Next";
          "<leader>b" = "Buffer";
          "<leader>d" = "Debug";
          "<leader>h" = null;
          "<leader>lw" = null;
          "<leader>gh" = "Hunk";
          "<leader>gt" = "Toggle";
          "<leader>ct" = "Toggle";
          "<leader>xg" = "Goto";
          "<leader>xw" = "Workspace";
          "<leader>gg" = "Lazygit";
          "<leader>bm" = null;
        };
      };
    };
  };
}

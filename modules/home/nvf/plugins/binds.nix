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
          "<leader>s" = "Search";
          "<leader>x" = "Diagnostics/Quickfix";
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
          "<leader>-" = "Yazi";
        };
      };
    };
  };
}

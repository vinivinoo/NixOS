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
          "<" = "Prev";
          ">" = "Next";
          "g" = "Goto";
          "gs" = "Surround";
          "z" = "Fold";
          "<leader>b" = "Buffer";
        };
      };
    };
  };
}

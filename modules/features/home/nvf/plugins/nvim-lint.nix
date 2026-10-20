{ self, inputs, ... }: {

  flake.homeModules.nvfLint = {
    programs.nvf.settings.vim = {
      diagnostics = {
        enable = true;
        nvim-lint.enable = true;
      };
    };
  };
}

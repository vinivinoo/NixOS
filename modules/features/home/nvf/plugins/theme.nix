{ self, inputs, ... }: {

  flake.homeModules.nvfTheme = {
    programs.nvf.settings.vim = {
      theme = {
        enable = true;
        nvfTheme = "catppuccin";
        style = "mocha";
      };
    };
  };
}

{ self, inputs, ... }: {

  flake.homeModules.nvfTheme = {
    programs.nvf.settings.vim = {
      theme = {
        enable = true;
        name = "catppuccin";
        style = "mocha";
      };
    };
  };
}

{ self, inputs, ... }: {

  flake.homeModules.name = {
    programs.nvf.settings.vim = {
      statusline = {
        lualine.enable = true;
      };
    };
  };
}

{ self, inputs, ... }: {

  flake.homeModules.nvfStatusline = {
    programs.nvf.settings.vim = {
      statusline = {
        lualine.enable = true;
      };
    };
  };
}

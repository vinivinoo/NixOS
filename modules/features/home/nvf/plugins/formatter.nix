{ self, inputs, ... }: {

  flake.homeModules.nvfFormatter = {
    programs.nvf.settings.vim = {
      formatter = {
        conform-nvim = {
          enable = false;
        };
      };
    };
  };
}

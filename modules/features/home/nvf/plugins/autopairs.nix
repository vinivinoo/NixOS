{ self, inputs, ... }: {

  flake.homeModules.nvfAutopairs = {
    programs.nvf.settings.vim = {
      autopairs = {
        nvim-autopairs.enable = true;
      };
    };
  };
}

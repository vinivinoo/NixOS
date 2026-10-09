{ self, inputs, ... }: {

  flake.homeModules.nvfTreesitter = {
    programs.nvf.settings.vim = {
      treesitter = {
        enable = true;
      };
    };
  };
}

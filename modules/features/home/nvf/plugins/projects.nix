{ self, inputs, ... }: {

  flake.homeModules.nvfProject = {
    programs.nvf.settings.vim = {
      project-nvim.enable = true;
    };
  };
}

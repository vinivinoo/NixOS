{ self, inputs, ... }: {

  flake.homeModules.nvfProject = {
    programs.nvf.settings.vim = {
      projects = {
        project-nvim.enable = true;
      };
    };
  };
}

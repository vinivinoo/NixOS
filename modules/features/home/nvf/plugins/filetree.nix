{ self, inputs, ... }: {

  flake.homeModules.nvfFiletree = {
    programs.nvf.settings.vim = {
      filetree = {
        neo-tree.enable = true;
      };
    };
  };
}

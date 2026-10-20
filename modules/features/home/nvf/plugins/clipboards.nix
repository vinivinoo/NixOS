{ self, inputs, ... }: {

  flake.homeModules.nvfClipboards = {
    programs.nvf.settings.vim = {
      clipboard = {
        enable = true;
      };
    };
  };
}

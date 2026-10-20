{ self, inputs, ... }: {

  flake.homeModules.nvfVisuals = {
    programs.nvf.settings.vim = {
      visuals = {
        blink-indent = {
          enable = true;
        };
      };
    };
  };
}

{ self, inputs, ... }: {

  flake.homeModules.nvfTerminal = {
    programs.nvf.settings.vim = {
      terminal = {
        toggleterm = {
          enable = true;
          lazygit = {
            enable = true;
          };
        };
      };
    };
  };
}

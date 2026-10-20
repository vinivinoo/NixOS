{ self, inputs, ... }: {

  flake.homeModules.nvfDebug = {
    programs.nvf.settings.vim = {
      debugger = {
        nvim-dap.enable = true;
      };
    };
  };
}

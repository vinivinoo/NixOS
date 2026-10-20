{ self, inputs, ... }: {

  flake.homeModules.nvf = { inputs, pkgs, ... }: {
    imports = [
      inputs.nvf.homeManagerModules.default
      self.homeModules.nvfAutocmds
      self.homeModules.nvfOptions
      self.homeModules.nvfKeybinds
      self.homeModules.nvfAutocomplete
      self.homeModules.nvfAutopairs
      self.homeModules.nvfBinds
      self.homeModules.nvfClipboards
      self.homeModules.nvfDashboards
      self.homeModules.nvfDebug
      self.homeModules.nvfFiletree
      self.homeModules.nvfFormatter
      self.homeModules.nvfFzflua
      self.homeModules.nvfGit
      self.homeModules.nvfLanguages
      self.homeModules.nvfLsp
      self.homeModules.nvfMini
      self.homeModules.nvfNavigation
      self.homeModules.nvfNotes
      self.homeModules.nvfLint
      self.homeModules.nvfProject
      self.homeModules.nvfSession
      self.homeModules.nvfStatusline
      self.homeModules.nvfTabline
      self.homeModules.nvfTerminal
      self.homeModules.nvfTheme
      self.homeModules.nvfTreesitter
      self.homeModules.nvfUtility
      self.homeModules.nvfVisuals
    ];

    programs.nvf = {
      enable = true;
      settings = {
        vim = {
          viAlias = true;
          vimAlias = true;
          lineNumberMode = "relative";
        };
      };
    };
  };
}

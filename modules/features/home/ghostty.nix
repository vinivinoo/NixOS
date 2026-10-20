{ self, inputs, ... }: {
  flake.homeModules.ghostty = {
    programs.ghostty = {
      enable = true;
      enableZshIntegration = true;
      installVimSyntax = true;
      installBatSyntax = true;
      settings = {
        background-opacity = 0.85;
        background-blur = 20;
        resize-overlay = "never";
      };
    };
  };
}

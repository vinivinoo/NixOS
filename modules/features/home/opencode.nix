{ self, inputs, ... }: {
  flake.homeModules.opencode = {
    programs.opencode = {
      enable = true;
    };
  };    
}

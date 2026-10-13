{ self, inputs, ... }: {
  flake.homeModules.obsidian = {
    programs.obsidian = {
      enable = true;
    };
  };    
}

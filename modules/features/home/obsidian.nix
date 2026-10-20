{ self, inputs, ... }: {
  flake.homeModules.obsidian = {
    programs.obsidian = {
      enable = true;
      cli.enable = true;
    };
  };    
}

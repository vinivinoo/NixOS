{ self, inputs, ... }: {
  flake.homeModules.opencode = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      python312
    ];

    programs.opencode = {
      enable = true;
    };
  };    
}

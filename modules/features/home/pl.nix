{ self, inputs, ... }: {
  
  flake.homeModules.pl = { pkgs, ... }: {
    home.packages = with pkgs; [
      gcc
    ];
  };
}

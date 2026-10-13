{ self, inputs, ... }: {
  flake.nixosModules.xwayland = {
    programs.xwayland = {
      enable = true;
    };
  };
}

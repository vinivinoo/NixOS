{ self, inputs, ... }: {

  flake.nixosModules.xserver = {
    services.xserver = {
      enable = true;
      xkb = {
        layout = "de";
      };
    };
  };
}

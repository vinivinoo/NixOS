{ self, inputs, ... }: {

  flake.nixosModules.networks = {
    networking = {
      networkmanager = {
        enable = true;
      };
    };
  };
}

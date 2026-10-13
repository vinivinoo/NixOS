{ self, inputs, ... }: {

  flake.nixosModules.gaming = {
    services.steam = {
      enable = true;
    };
  };
}

{ self, inputs, ... }: {
  flake.nixosModules.openssh = {
    services.openssh = {
      enable = true;
      ports = [ 443 ];
    };
  };
}

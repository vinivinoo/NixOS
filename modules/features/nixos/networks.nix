{ self, inputs, ... }: {

  flake.nixosModules.networks = { pkgs }: {
    networking = {
      networkmanager = {
        enable = true;
      };
    };

    environment.systemPackages = with pkgs; [
      networkmanagerapplet
    ];
  };
}

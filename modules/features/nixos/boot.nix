{ self, inputs, ... }: {

  flake.nixosModules.boot = {
    boot.loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };
}

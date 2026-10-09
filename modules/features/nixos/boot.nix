{ self, inputs, ... }: {

  flake.nixosModule.boot = {
    boot.loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };
}

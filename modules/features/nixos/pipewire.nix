{ self, inputs, ... }: {
  flake.nixosModules.pipewire = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      pwvucontrol
    ];

    services.pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
    };
  };
}

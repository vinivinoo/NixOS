{ self, inputs, ... }: {
  flake.nixosModules.sddm = { pkgs, ... }: {
    services.displayManager.sddm = {
      enable = true;
    };

    # NOTE: needs to be set so sddm can start niri
    programs.niri.enable = true;
  };
}

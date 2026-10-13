{ self, inputs, ... }: {
  flake.nixosModules.sddm = {
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };
}

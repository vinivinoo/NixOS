{ self, inputs, ... }: {
  flake.nixosModules.programs = {
    programs = {
      xwayland.enable = true;
      niri.enable = true;
      zsh.enable = true;
      nix-ld.enable = true;
      steam.enable = true;
      fuse.userAllowOther = true;
    };
  };
}

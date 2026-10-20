{ self, inputs, ... }: {
  flake.nixosModules.xwayland = { pkgs, ... }: {
    programs.xwayland = {
      enable = true;
    };

    environment.systemPackages = with pkgs; [
      xwayland-satellite
    ]; 
  };
}

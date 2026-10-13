{ self, inputs, ... }:
{
  flake.nixosModules.power = {
    services = {
      power-profiles-daemon.enable = true;
      upower.enable = true;
    };
  };
}

{ self, inputs, ... }:
{
  flake.nixosModules.hardware = {
    hardware = {
      graphics = {
        enable = true;
        enable32Bit = true;
      };
    };
    power-profiles-daemon.enable = true;
    upower.enable = true;
  };
}

{ self, inputs, ... }:
{
  flake.nixosModules.hardware = {
    hardware = {
      graphics = {
        enable = true;
        enable32Bit = true;
      };
    };
  };
}

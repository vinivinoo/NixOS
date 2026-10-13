{
  self,
  inputs,
  ...
}:
{

  flake.nixosModules.nixosPackages =
    { pkgs, ... }:
    let
      systemUtils = with pkgs; [
        pavucontrol
        unzip
        wget
        wl-clipboard
      ];

    in
    {
      environment.systemPackages = systemUtils;
    };
}

{
  self,
  inputs,
  pkgs,
  ...
}:
{

  flake.nixosModules.nixosPackages =
    let
      systemUtils = with pkgs; [
        brightnessct
        openssh
        pavucontrol
        playerctl
        pipewire
        unzip
        wget
        wl-clipboard
        xwayland
        xwayland-satellite
      ];

      networkTools = with pkgs; [
        blueman
        networkmanagerapplet
      ];
    in
    {
      environment.systemPackages = systemUtils ++ networkTools;
    };
}

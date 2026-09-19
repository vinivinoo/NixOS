{pkgs, ...}: let
  systemUtils = with pkgs; [
    brightnessctl
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
in {
  environment.systemPackages =
    systemUtils
    ++ networkTools;
}

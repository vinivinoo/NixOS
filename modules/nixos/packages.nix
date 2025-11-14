{ pkgs, ... }:

let
  systemUtils = with pkgs; [
    openssh
    unzip
    wget
    wl-clipboard
  ];

  
  networkTools = with pkgs; [
    blueman
    networkmanagerapplet
  ];
 
  fonts = with pkgs; [
    nerd-fonts.fira-code
  ];

in {
  environment.systemPackages =
    systemUtils
    ++ networkTools
    ++ fonts;
}

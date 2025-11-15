{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./../../modules/nixos/bundle.nix
    ];

  time.timeZone = "Europe/Berlin";

  i18n = {
    defaultLocale = "de_DE.UTF-8";
  };

  console = {
    keyMap = "de";
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  programs.zsh.enable = true;
 
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

	environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];
	
  system.stateVersion = "25.05";

}

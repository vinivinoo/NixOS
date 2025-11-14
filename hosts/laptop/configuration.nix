{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./../../modules/nixos/bundle.nix
    ];

  time.timeZone = "Europe/Berlin";

  console = {
    keyMap = "de";
  };
 
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

	environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];
	
  system.stateVersion = "25.05";

}

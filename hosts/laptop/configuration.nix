{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    (inputs.import-tree ./../../modules/nixos)
    # ./../../modules/nixos/bundle.nix

  ];

  time.timeZone = "Europe/Berlin";

  i18n = {
    defaultLocale = "de_DE.UTF-8";
  };

  console = {
    keyMap = "de";
  };

  nixpkgs.config.permittedInsecurePackages = [
    "electron-39.8.10"
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.pathsToLink = [
    "/share/applications"
    "/share/xdg-desktop-portal"
  ];

  system.stateVersion = "25.05";

}

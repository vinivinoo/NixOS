{ pkgs, inputs, ... }:

{

  imports = [
    ./../../modules/home/bundle.nix
    inputs.catppuccin.homeModules.catppuccin
  ];



  home = {
    username = "vini";
    homeDirectory = "/home/vini";
    stateVersion = "25.11";
    sessionVariables = {
      BROWSER = "firefox";
      EDITOR = "nvim";
      TERMINAL = "kitty";
      XCURSOR_THEME = "Bibata-Modern-Ice";
      XCURSOR_SIZE = "24";
    };
  };

  programs.home-manager.enable = true;

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "lavender";
  };

  home.file = {
    "/home/vini/.config/niri/config.kdl".source = ./../../config/niri/config.kdl;
    "/home/vini/Bilder/Backgrounds".source = ./../../config/makko-background;
    "/home/vini/bin/screenshot.sh".source = ./../../config/bash-scripts/screenshot.sh;
  };
}

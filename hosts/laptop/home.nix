{ pkgs, inputs, ... }:

{
  imports = [
    ./../../modules/home/bundle.nix
    inputs.catppuccin.homeModules.catppuccin
    inputs.niri.homeModules.niri
    inputs.noctalia.homeModules.default
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
      QS-ICON-THEME = "Adwaita";
      QT_QPA_PLATFORMTHEME = "gtk3";
      XDG_DATA_DIRS = "$GSETTINGS_SCHEMAS_PATH:$XDG_DATA_DIRS:/run/current-system/sw/share";
    };
  };

  programs.home-manager.enable = true;

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "lavender";
  };

  home.file = {
    # "/home/vini/.config/niri".source = ./../../config/niri;
    "/home/vini/Bilder/Backgrounds".source = ./../../config/makko-background;
    "/home/vini/bin/screenshot.sh".source = ./../../config/bash-scripts/screenshot.sh;
  };
}

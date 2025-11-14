{ pkgs, catppuccin , ... }:

{

  imports = [
    ./../../modules/home/bundle.nix
    catppuccin.homeModules.catppuccin
  ];

  

  home = {
    username = "vini";
    homeDirectory = "/home/vini";
    stateVersion = "25.11";
    sessionVariables = {
      BROWSER = "firefox";
      EDITOR = "helix";
      TERMINAL = "kitty";
    };
  };

  programs.home-manager.enable = true;

  home.file = {
    ".config/hypr".source = ./../../config/hypr;
    ".config/kitty".source = ./../../config/kitty;
    "Bilder/Backgrounds".source = ./../../config/makko-background;
    # ".config/rofi".source= ./../../config/rofi;
    ".config/swaylock".source= ./../../config/swaylock;
    ".config/tmux".source= ./../../config/tmux;
    # ".config/waybar".source = ./../../config/waybar;
    # ".config/yazi".source = ./../../config/yazi;
    ".config/zed".source = ./../../config/zed;
  };
}

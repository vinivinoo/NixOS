{ pkgs, nvf, ... }:

{

  imports = [
    ./../../modules/home/bundle.nix
  ];

  

  home = {
    username = "vini";
    homeDirectory = "/home/vini";
    stateVersion = "25.11";
  };

  programs.home-manager.enable = true;

  home.file = {
    # ".config/helix".source = ./../../config/helix;
    ".config/hypr".source = ./../../config/hypr;
    ".config/kitty".source = ./../../config/kitty;
    # ".config/lazygit".source = ./../../config/lazygit;
    "Bilder/Backgrounds".source = ./../../config/makko-background;
    # ".config/rofi".source= ./../../config/rofi;
    # ".config/starship".source= ./../../config/starship;
    ".config/swaylock".source= ./../../config/swaylock;
    ".config/tmux".source= ./../../config/tmux;
    # ".config/waybar".source = ./../../config/waybar;
    # ".config/yazi".source = ./../../config/yazi;
    ".config/zed".source = ./../../config/zed;
  };
}

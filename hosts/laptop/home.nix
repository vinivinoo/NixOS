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
      EDITOR = "helix";
      TERMINAL = "kitty";
    };
  };

  programs.home-manager.enable = true;

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "lavender";
  };

  home.file = {
    ".config/hypr".source = ./../../config/hypr;
    "Bilder/Backgrounds".source = ./../../config/makko-background;
    # ".config/swaylock".source= ./../../config/swaylock;
    ".config/tmux".source= ./../../config/tmux;
    # ".config/waybar".source = ./../../config/waybar;
    # ".config/zed".source = ./../../config/zed;
  };
}

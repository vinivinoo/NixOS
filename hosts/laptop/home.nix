{ pkgs, inputs, ... }:

{

  imports = [
    ./../../modules/home/bundle.nix
    inputs.catppuccin.homeModules.catppuccin
    inputs.nvf.homeManagerModules.default
  ];



  home = {
    username = "vini";
    homeDirectory = "/home/vini";
    stateVersion = "25.11";
    sessionVariables = {
      BROWSER = "firefox";
      EDITOR = "helix";
      TERMINAL = "kitty";
      XCURSOR_THEME = "Bibata-bodern-Ice";
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
    # ".config/hypr".source = ./../../config/hypr;
    "Bilder/Backgrounds".source = ./../../config/makko-background;
  };
}

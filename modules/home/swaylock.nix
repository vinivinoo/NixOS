{ pkgs, ... }:
{
  programs.swaylock = {

    enable = true;
    package = pkgs.swaylock-effects;
    settings = {
      image = "/home/vini/Bilder/Backgrounds/makko-background.png";
      clock = true;
      daemonize = true;
      effect-blur = "3x5";
      effect-vignette = "0.5:0.5";
      font = "FiraCode Nerd Font Mono";
      font-size = 24;
      ingore-empty-password = true;
      indicator = true;
      indicator-idle-visible = false;
      indicator-radius = 100;
      indicator-thickness = 7;
    };
  };
}

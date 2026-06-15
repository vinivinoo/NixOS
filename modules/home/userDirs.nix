{ config, pkgs, ... }:
 
{
  xdg.userDirs = {
    enable = true;
    createDirectories = true;

    download = "${config.home.homeDirectory}/Downloads";
    documents = "${config.home.homeDirectory}/Documents";
    pictures = "${config.home.homeDirectory}/Pictures";
    projects = "${config.home.homeDirectory}/Projects";
    
    extraConfig = {
      XDG_SCREENSHOTS_DIR = "${config.home.homeDirectory}/Pictures/Screenshots";
      XDG_WALLPAPERS_DIR = "${config.home.homeDirectory}/Pictures/Wallpapers";
    };
  };
}

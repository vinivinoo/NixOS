{ config, pkgs, ... }:
 
{
  xdg.userDirs = {
    enable = true;
    createDirectories = true;
    setSessionVariables = true;

    download = "${config.home.homeDirectory}/Downloads";
    documents = "${config.home.homeDirectory}/Documents";
    pictures = "${config.home.homeDirectory}/Pictures";
    projects = "${config.home.homeDirectory}/Projects";

    desktop = null;
    music = null;
    videos = null;
    templates = null;
    publicShare = null;
    
    extraConfig = {
      SCREENSHOTS = "${config.home.homeDirectory}/Pictures/Screenshots";
    };
  };
}

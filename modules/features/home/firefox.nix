{ config, ... }:

{
  programs.firefox = {
    enable = false;
    configPath = "${config.xdg.configHome}/mozilla/firefox";
  };
}

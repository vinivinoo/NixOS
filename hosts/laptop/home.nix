{inputs, ...}: {
  imports = [
    (inputs.import-tree ./../../modules/home)
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
      QS-ICON-THEME = "Papirus";
      QT_QPA_PLATFORMTHEME = "gtk3";
      XDG_DATA_DIRS = "$GSETTINGS_SCHEMAS_PATH:$XDG_DATA_DIRS:/run/current-system/sw/share";
      LANG = "en_US.UTF-8";
      LC_TIME = "de_DE.UTF-8";
      LC_NUMERIC = "de_DE.UTF-8";
      LC_MONETARY = "de_DE.UTF-8";
    };
  };

  programs.home-manager.enable = true;

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "application/pdf" = "firefox.desktop";
    };
  };

  fonts.fontconfig.enable = true;

  home.file = {
    "/home/vini/Pictures/Wallpapers".source = ./../../config/wallpapers;
    "/home/vini/bin/screenshot.sh".source = ./../../config/bash-scripts/screenshot.sh;
  };
}

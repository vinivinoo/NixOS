{
  self,
  inputs,
  ...
}: {
  flake.homeConfiguration.vini = {
    inputs,
    config,
    ...
  }: {
    imports = with self.homeModules; [
      bat
      btop
      catppuccin
      cursor
      cliTools
      fonts
      git
      helix
      kitty
      lazygit
      niri
      nixLd
      noctalia
      # nvf
      packages
      prismlauncher
      rclone
      starship
      swaylock
      tmux
      userDirs
      vesktop
      yazi
      zedEditor
      zenBrowser
      zsh
    ];

    programs.home-manager.enable = true;
    fonts.fontconfig.enable = true;

    home = {
      username = "vini";
      homeDirectory = "/home/vini";
      stateVersion = "25.11";
      sessionVariables = {
        BROWSER = "zen-beta";
        EDITOR = "nvim";
        TERMINAL = "kitty";
        EMAIL = "thunderbird";
        NOTES = "zennotes-desktop";
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

    xdg.mimeApps = {
      enable = true;
      defaultApplications = {
        "application/pdf" = "${config.home.sessionVariables.BROWSER}.desktop";
        "image/png" = "oculante.desktop";
        "image/jpeg" = "oculante.desktop";
        "image/webp" = "oculante.desktop";
        "image/gif" = "oculante.desktop";
        "x-schema-handler/mailto" = "${config.home.sessionVariables.EMAIL}.desktop";
      };
    };

    home.file = {
      "/home/vini/Pictures/Wallpapers".source = ./../../../config/wallpapers;
      "/home/vini/.local/bin/screenshot.sh".source = ./../../../config/bash-scripts/screenshot.sh;
    };
  };
}

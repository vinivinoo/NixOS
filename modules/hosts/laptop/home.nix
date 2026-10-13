{
  self,
  inputs,
  ...
}:
{
  flake.homeConfiguration.vini =
    {
      inputs,
      config,
      ...
    }:
    {
      imports = with self.homeModules; [
        bat
        btop
        catppuccin
        cliTools
        fonts
        git
        gtk
        helix
        kitty
        lazygit
        media
        mimeApps
        niri
        noctalia
        neovim
        prismlauncher
        rclone
        starship
        swaylock
        tmux
        userDirs
        vesktop
        yazi
        work
        zenBrowser
        zsh
      ];

      programs.home-manager.enable = true;

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

          LANG = "en_US.UTF-8";
          LC_TIME = "de_DE.UTF-8";
          LC_NUMERIC = "de_DE.UTF-8";
          LC_MONETARY = "de_DE.UTF-8";
        };
      };

      home.file = {
        "/home/vini/Pictures/Wallpapers".source = ./../../../config/wallpapers;
        "/home/vini/.local/bin/screenshot.sh".source = ./../../../config/bash-scripts/screenshot.sh;
      };
    };
}

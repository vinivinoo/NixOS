{ inputs, config, ... }:

{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  home.file.".cache/noctalia/wallpapers,json" = {
    text = builtins.toJSON {
      defaultWallpaper = "${config.xdg.userDirs.extraConfig.XDG_WALLPAPERS_DIR}/makko-wallpaper.png";
    };
  };

  programs.noctalia-shell = {
    enable = true;
    plugins = {
      theme = {
        mode = "dark";
        source = "community";
        communityPalette = "Catppuccin Lavender";
      };
      sources = [
        {
          enabled = true;
          name = "Official Noctalia Plugins";
          url = "https://github.com/noctalia-dev/noctalia-plugins";
        }
      ];
      states = {
        polkit-agent = {
          enabled = true;
          sourceUrl = "https://github.com/noctalia-dev/noctalia-plugins";
        };
      };
      version = 2;
    };
    settings = {
      
      location = {
        monthBeforeDay = false;
        name = "Darmstadt, Deutschland";
      };
    };
  };
}

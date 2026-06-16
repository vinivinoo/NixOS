{
  inputs,
  config,
  ...
}:

{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  home.file.".cache/noctalia/wallpapers.json" = {
    text = builtins.toJSON {
      defaultWallpaper = "${config.xdg.userDirs.pictures}/Wallpapers/makko-wallpaper.png";
    };
  };

  programs.noctalia-shell = {
    enable = true;
    # plugins = {
    #   sources = [
    #     {
    #       enabled = true;
    #       name = "Official Noctalia Plugins";
    #       url = "https://github.com/noctalia-dev/noctalia-plugins";
    #     }
    #   ];
    #   states = {
    #     polkit-agent = {
    #       enabled = true;
    #       sourceUrl = "https://github.com/noctalia-dev/noctalia-plugins";
    #     };
    #   };
    #   version = 2;
    # };
    settings = {
      bar = {
        density = "default";
        position = "top";
        showCapsule = true;
        widgets = {

          left = [
            {
              id = "Clock";
            }
            {
              id = "SystemMonitor";
            }
            {
              id = "ActiveWindow";
            }
            {
              id = "MediaMini";
            }
          ];

          center = [
            {
              id = "Workspace";
            }
          ];

          right = [
            {
              id = "Tray";
            }
            {
              id = "NotificationHistory";
            }
            {
              id = "Network";
            }
            {
              id = "Bluetooth";
            }
            {
              id = "Battery";
            }
            {
              id = "Volume";
            }
            {
              id = "Brightness";
            }
            {
              id = "ControlCenter";
              useDistroLogo = true;
            }
          ];
        };
      };
      colorSchemes.predefinedScheme = "Catppuccin Lavender";
      location = {
        language = "en";
        monthBeforeDay = false;
        name = "Darmstadt, Deutschland";
      };
    };
  };
}

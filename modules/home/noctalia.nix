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
    settings = {
      bar = {
        density = "default";
        position = "top";
        showCapsule = true;
        widgets = {

          left = [
            {
              id = "Spacer";
              width = 1;
            }
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
            {
              id = "Spacer";
              width = 1;
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

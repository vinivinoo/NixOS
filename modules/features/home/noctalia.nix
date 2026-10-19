{ self, inputs, ... }: {

  flake.homeModules.noctalia = { inputs, pkgs, config, ... }: {
    programs.noctalia = {
      enable = true;
      settings = {
        bar = {
          order = [
            "main"
          ];
          main = {
            enabled = true;
            position = "top";
            capsule = true;
            widget_spacing = 6;
            margin_ends = 2;
            margin_edge = 2;
            font_family = "JetBrainsMono Nerd Font Propo";
            padding = 5;
            start = [
              "launcher"
              "workspaces"
              "weather"
              "active_window"
              "media"
            ];

            center = [
              "clock"
            ];

            end = [
              "tray"
              "notifications"
              "bluetooth"
              "network"
              "group:g1"
              "brightness"
              "volume"
              "battery"
              "control-center"
            ];

            capsule_group = [
              {
                id = "g1";
                members = [
                  "cpu"
                  "ram"
                  "temp"
                ];
              }
            ];
          };
        };
        widget = {
          clock = {
            format = "{:%A, %d %b - %H:%M:%S}";
          };
          active_window = {
            min_length = 0;
            max_length = 180;
            title_scroll = "on_hover";
          };
          media = {
            min_length = 0;
            max_length = 180;
            title_scroll = "on_hover";
            hide_when_no_media = true;
          };
          tray = {
            hidden = [
              "nm-applet"
              "blueman"
            ];
          };
          control-center = {
            custorm_image = "${config.home.homeDirectory}/nixos/config/logos/NixOS.svg";
            custom_image_colorize = false;
          };
          network = {
            show_label = false;
          };
          cpu = {
            show_value = false;
          };
          ram = {
            show_value = false;
          };
          temp = {
            show_value = false;
          };
        };

        control_center = {
          sidebar = "full";
          sidebar_section = "full";
          width = 700;
        };

        lockscreen = {
          enabled = false;
        };

        shell = {
          font_family = "Fira Sans";
          lang = "en";
          polkit_agent = true;
          panel = {
            open_near_click_control_center = true;
          };
        };

        calendar = {
          enabled = true;
          refresh_minutes = 15;

          account = {
            work_google = {
              type = "google";
              name = "Google Calender";
            };
          };
        };

        wallpaper = {
          enabled = true;
          directory = "${config.home.homeDirectory}/Pictures/Wallpapers";
          directory_dark = "${config.home.homeDirectory}/Pictures/Wallpapers";
          default.path = "${config.home.homeDirectory}/Pictures/Wallpapers/makko-wallpaper.png";
        };

        theme = {
          mode = "dark";
          source = "community";
          builtin = "Catppuccin";
          community_palette = "Catppuccin Lavender";
        };

        location = {
          auto_locate = false;
          address = "Skövde, SE";
        };

        nightlight = {
          enabled = true;
          temperature_night = 4000;
        };
      };
    };
  };
}

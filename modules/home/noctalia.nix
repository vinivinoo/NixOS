{inputs, ...}: {
  imports = [
    inputs.noctalia.homeModules.default
  ];

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
          margin_ends = 7;
          margin_edge = 5;
          font_family = "Fira Sans";
          padding = 5;
          start = [
            "clock"
            "weather"
            "active_window"
            "media"
          ];

          center = [
            "workspaces"
          ];

          end = [
            "tray"
            "notifications"
            "bluetooth"
            "network"
            "battery"
            "volume"
            "brightness"
            "session"
            "control-center"
          ];
        };
      };
      widget = {
        clock = {
          format = "{:%H:%M %a, %d %b}";
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
          custorm_image = "/nix/store/hcc4x3ag7qxa2fjqk5bny2v4nhl24nny-noctalia-5.0.0/share/noctalia/assets/images/distros/nixos.svg";
          custom_image_colorize = false;
        };
        network = {
          show_label = false;
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

        session = {
          actions = [
            {
              action = "lock";
              enabled = true;
              command = "swaylock";
            }
            {
              action = "logout";
              enabled = true;
            }
            {
              action = "lock_and_suspend";
              enabled = true;
              command = "swaylock && systemctl suspend";
            }
            {
              action = "reboot";
              enabled = true;
              command = "reboot";
            }
            {
              action = "shutdown";
              enabled = true;
              command = "shutdown";
            }
          ];
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
        directory = "/home/vini/Pictures/Wallpapers";
        directory_dark = "/home/vini/Pictures/Wallpapers";
        default.path = "/home/vini/Pictures/Wallpapers/makko-wallpaper.png";
      };

      theme = {
        mode = "dark";
        source = "community";
        builtin = "Catppuccin";
        community_palette = "Catppuccin Lavender";
      };

      location = {
        auto_locate = true;
      };

      nightlight = {
        enabled = true;
        temperature_night = 4000;
      };

      plugins = {
        enabled = [
          thepunkoff/pomodoro
        ];
        source = [
          {
            name = "official";
            kind = "git";
            location = "https://github.com/noctalia-dev/official-plugins";
            enabled = true;
          }
        ];
      };
    };
  };
}

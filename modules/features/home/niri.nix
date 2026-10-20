{ self, inputs, ... }:
{

  flake.homeModules.niri =
    {
      inputs,
      config,
      lib,
      pkgs,
      ...
    }:
    {
      home.packages = with pkgs; [
        # NOTE: for Screenshots
        grim
        slurp

        libnotify
        libdisplay-info

        swaynotificationcenter
        awww
        wl-clipboard

        oculante
        nautilus

      ];

      # NOTE: wayland.windowManager.niri.settings is a freeform KDL generator:
      #   attr name            -> KDL node
      #   scalar value         -> one argument           (gaps = 4;      => gaps 4)
      #   { }                  -> flag node, no argument (tap = { };     => tap)
      #   _args / _props       -> arguments / properties of that node
      #   _children = [ {…} ]  -> ordered / repeated nodes (output, workspace, window-rule, ...)
      #   list of attrsets     -> NOT repeated nodes, rendered as `-` children (invalid for niri)
      #   list of scalars      -> several args on ONE node
      wayland.windowManager.niri = {
        enable = true;

        settings = {
          input = {
            keyboard.xkb.layout = "de,se";

            touchpad = {
              tap = { };
              dwt = { };
              natural-scroll = { };
            };

            mouse.accel-speed = 0.0;

            focus-follows-mouse = { };
          };

          gestures.hot-corners.off = { };

          layout = {
            gaps = 4;
            center-focused-column = "never";
            background-color = "transparent";

            focus-ring = {
              width = 2;
              active-color = "#b4befe";
              inactive-color = "#1e1e2e";
              urgent-color = "#9b0000";
            };

            default-column-width.proportion = 0.5;

            struts = { };
          };

          prefer-no-csd = { };
          screenshot-path = null; # Echter null-Wert statt String

          # NOTE: environment variable names are case-sensitive
          environment = {
            ELECTRON_OZONE_PLATFORM_HINT = "auto";
            QT_QPA_PLATFORM = "wayland";
            QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
            XDG_SESSION_TYPE = "wayland";
            XDG_CURRENT_DESKTOP = "niri";
            QT_QPA_PLATFORMTHEME = "gtk3";
          };

          debug.honor-xdg-activation-with-invalid-serial = { };

          hotkey-overlay.skip-at-startup = { };

          # Animations-Block entfernt, da er den Niri-Defaults entsprach
          # und Obsolete-Warnungen erzeugt hat.

          # Repeated nodes (spawn-at-startup, workspace, output, window-rule, layer-rule)
          # go into the ordered `_children` list; rule order is preserved.
          _children = [
            { spawn-at-startup._args = [ "noctalia" ]; }
            { spawn-at-startup._args = [ "xwayland-satellite" ]; }

            # NOTE: open-on-workspace only works for *named* workspaces
            { workspace._args = [ "1" ]; }
            { workspace._args = [ "2" ]; }
            { workspace._args = [ "3" ]; }

            {
              output = {
                _args = [ "eDP-1" ];
                mode = "1920x1200@60.000";
                scale = 1.0;
                position._props = {
                  x = 0;
                  y = 0;
                };
              };
            }
            # {
            #   output = {
            #     _args = [ "HDMI-A-1" ];
            #     mode = "2560x1440@74.780";
            #     scale = 1.0;
            #     position._props = {
            #       x = 0;
            #       y = -1440;
            #     };
            #   };
            # }

            # # D120 Monitore
            # {
            #   output = {
            #     _args = [ "PNP(AOC) U27B3AF ZXLQ8HA004111" ];
            #     mode = "3840x2160@60.000";
            #     scale = 1.5;
            #     position._props = {
            #       x = 0;
            #       y = -1440;
            #     };
            #   };
            # }

            # # C-Pool Monitore
            # {
            #   output = {
            #     _args = [ "Lenovo Group Limited P27QD-40 VNACFDXA" ];
            #     mode = "2560x1440@119.998";
            #     scale = 1.0;
            #     position._props = {
            #       x = 0;
            #       y = -1440;
            #     };
            #   };
            # }

            {
              window-rule = {
                # geometry-corner-radius = {
                #   top-left = 20.0;
                #   top-right = 20.0;
                #   bottom-left = 20.0;
                #   bottom-right = 20.0;
                # };
                clip-to-geometry = true;
              };
            }
            # NOTE: needed to make ghostty have blur
            {
              window-rule = {
                match._props.app-id = "com.mitchellh.ghostty";
                background-effect = {
                  blur = true;
                  xray = false;
                };
              };
            }
            {
              window-rule = {
                match._props.app-id = "${config.home.sessionVariables.BROWSER}";
                open-on-workspace = "1";
                open-maximized = true;
              };
            }
            {
              window-rule = {
                match._props.app-id = "${config.home.sessionVariables.NOTES}";
                open-on-workspace = "2";
                open-maximized = true;
              };
            }
            {
              # several matches in one rule -> nested _children
              window-rule._children = [
                { match._props.app-id = "vesktop"; }
                { match._props.app-id = "Spotify"; }
                { open-on-workspace = "3"; }
              ];
            }

            {
              layer-rule = {
                match._props.namespace = "^noctalia-wallpaper*";
                place-within-backdrop = true;
              };
            }
          ];

          binds = {
            # ────────────── keybindings ──────────────
            # bind properties (allow-when-locked, cooldown-ms, repeat, ...) go into _props,
            # the action is the child node itself (no `action.` level)

            # ─── noctalia-shell keybinds ───
            "Mod+Shift+Escape".show-hotkey-overlay = { };

            # ─── applications ───
            "Mod+Return" = {
              _props.hotkey-overlay-title = "open terminal: ${config.home.sessionVariables.TERMINAL}";
              spawn = [ "${config.home.sessionVariables.TERMINAL}" ];
            };
            "Mod+Space" = {
              _props.hotkey-overlay-title = "run an application: rofi";
              spawn-sh = [ "noctalia msg panel-toggle launcher" ];
            };
            "Mod+B" = {
              _props.hotkey-overlay-title = "open browser: ${config.home.sessionVariables.BROWSER}";
              spawn = [ "${config.home.sessionVariables.BROWSER}" ];
            };
            "Mod+Alt+L" = {
              _props.hotkey-overlay-title = "lock screen: swaylock";
              spawn = [ "swaylock" ];
            };
            "Mod+E" = {
              _props.hotkey-overlay-title = "file manager: nautilus";
              spawn = [ "nautilus" ];
            };
            "Mod+N" = {
              _props.hotkey-overlay-title = "open notes";
              spawn = [ "${config.home.sessionVariables.NOTES}" ];
            };

            # ─── audio controls ───
            "XF86AudioRaiseVolume" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+ -l 1.0" ];
            };
            "XF86AudioLowerVolume" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-" ];
            };
            "XF86AudioMute" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" ];
            };
            "XF86AudioMicMute" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle" ];
            };

            "XF86AudioPlay" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.playerctl} play-pause" ];
            };
            "XF86AudioStop" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.playerctl} stop" ];
            };
            "XF86AudioPrev" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.playerctl} previous" ];
            };
            "XF86AudioNext" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.playerctl} next" ];
            };
            "Mod+Shift+Up" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.playerctl} play-pause" ];
            };
            "Mod+Shift+Down" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.playerctl} stop" ];
            };
            "Mod+Shift+Left" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.playerctl} previous" ];
            };
            "Mod+Shift+Right" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.playerctl} next" ];
            };
            "XF86MonBrightnessUp" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.brightnessctl} --class=backlight set +10%" ];
            };
            "XF86MonBrightnessDown" = {
              _props.allow-when-locked = true;
              spawn-sh = [ "${lib.getExe pkgs.brightnessctl} --class=backlight set 10%-" ];
            };
            "Alt+Shift+L".switch-layout = "next";

            # ─── window movement and focus ───
            "Mod+Q".close-window = { };

            "Mod+Left".focus-column-left = { };
            "Mod+H".focus-column-left = { };
            "Mod+Right".focus-column-right = { };
            "Mod+L".focus-column-right = { };
            "Mod+Up".focus-window-up = { };
            "Mod+K".focus-window-up = { };
            "Mod+Down".focus-window-down = { };
            "Mod+J".focus-window-down = { };

            "Mod+Shift+H".move-column-left = { };
            "Mod+Shift+L".move-column-right = { };
            "Mod+Shift+K".move-window-up = { };
            "Mod+Shift+J".move-window-down = { };

            "Mod+Home".focus-column-first = { };
            "Mod+End".focus-column-last = { };
            "Mod+Ctrl+Home".move-column-to-first = { };
            "Mod+Ctrl+End".move-column-to-last = { };

            "Mod+Ctrl+Left".focus-monitor-left = { };
            "Mod+Ctrl+H".focus-monitor-left = { };
            "Mod+Ctrl+Right".focus-monitor-right = { };
            "Mod+Ctrl+L".focus-monitor-right = { };
            "Mod+Ctrl+Up".focus-monitor-up = { };
            "Mod+Ctrl+K".focus-monitor-up = { };
            "Mod+Ctrl+Down".focus-monitor-down = { };
            "Mod+Ctrl+J".focus-monitor-down = { };

            "Mod+Shift+Ctrl+Left".move-column-to-monitor-left = { };
            "Mod+Shift+Ctrl+H".move-column-to-monitor-left = { };
            "Mod+Shift+Ctrl+Right".move-column-to-monitor-right = { };
            "Mod+Shift+Ctrl+L".move-column-to-monitor-right = { };
            "Mod+Shift+Ctrl+Up".move-column-to-monitor-up = { };
            "Mod+Shift+Ctrl+K".move-column-to-monitor-up = { };
            "Mod+Shift+Ctrl+Down".move-column-to-monitor-down = { };
            "Mod+Shift+Ctrl+J".move-column-to-monitor-down = { };

            # ─── workspace switching ───
            "Mod+WheelScrollDown" = {
              _props.cooldown-ms = 150;
              focus-workspace-down = { };
            };
            "Mod+U" = {
              _props.cooldown-ms = 150;
              focus-workspace-down = { };
            };
            "Mod+WheelScrollUp" = {
              _props.cooldown-ms = 150;
              focus-workspace-up = { };
            };
            "Mod+I" = {
              _props.cooldown-ms = 150;
              focus-workspace-up = { };
            };
            "Mod+Shift+WheelScrollDown" = {
              _props.cooldown-ms = 150;
              move-column-to-workspace-down = { };
            };
            "Mod+Shift+U" = {
              _props.cooldown-ms = 150;
              move-column-to-workspace-down = { };
            };
            "Mod+Shift+WheelScrollUp" = {
              _props.cooldown-ms = 150;
              move-column-to-workspace-up = { };
            };
            "Mod+Shift+I" = {
              _props.cooldown-ms = 150;
              move-column-to-workspace-up = { };
            };

            "Mod+WheelScrollRight".focus-column-right = { };
            "Mod+WheelScrollLeft".focus-column-left = { };
            "Mod+Shift+WheelScrollRight".move-column-right = { };
            "Mod+Shift+WheelScrollLeft".move-column-left = { };

            "Mod+Ctrl+Shift+WheelScrollDown".move-column-right = { };
            "Mod+Ctrl+Shift+WheelScrollUp".move-column-left = { };

            "Mod+1".focus-workspace = 1;
            "Mod+2".focus-workspace = 2;
            "Mod+3".focus-workspace = 3;
            "Mod+4".focus-workspace = 4;
            "Mod+5".focus-workspace = 5;
            "Mod+6".focus-workspace = 6;
            "Mod+7".focus-workspace = 7;
            "Mod+8".focus-workspace = 8;
            "Mod+9".focus-workspace = 9;

            "Mod+Shift+1".move-column-to-workspace = 1;
            "Mod+Shift+2".move-column-to-workspace = 2;
            "Mod+Shift+3".move-column-to-workspace = 3;
            "Mod+Shift+4".move-column-to-workspace = 4;
            "Mod+Shift+5".move-column-to-workspace = 5;
            "Mod+Shift+6".move-column-to-workspace = 6;
            "Mod+Shift+7".move-column-to-workspace = 7;
            "Mod+Shift+8".move-column-to-workspace = 8;
            "Mod+Shift+9".move-column-to-workspace = 9;

            "Mod+Tab".focus-workspace-previous = { };

            # ─── layout controls ───
            "Mod+Ctrl+F".expand-column-to-available-width = { };
            "Mod+C".center-column = { };
            "Mod+Ctrl+C".center-visible-columns = { };
            "Mod+Minus".set-column-width = "-10%";
            "Mod+Equal".set-column-width = "+10%";
            "Mod+Shift+Minus".set-window-height = "-10%";
            "Mod+Shift+Equal".set-window-height = "+10%";

            # ─── modes ───
            "Mod+T".toggle-window-floating = { };
            "Mod+F".maximize-column = { };
            "Mod+Shift+F".fullscreen-window = { };
            "Mod+W".toggle-column-tabbed-display = { };

            # ─── screenshots ───
            "Mod+S" = {
              _props.hotkey-overlay-title = "take a screenshot";
              spawn-sh = [ "${config.home.homeDirectory}/.local/bin/screenshot.sh" ];
            };
            "Mod+Shift+S" = {
              _props.hotkey-overlay-title = "take a screenshot select";
              spawn-sh = [ "${config.home.homeDirectory}/.local/bin/screenshot.sh select" ];
            };

            # ─── emergency escape key ───
            "Mod+Escape" = {
              _props.allow-inhibiting = false;
              toggle-keyboard-shortcuts-inhibit = { };
            };

            # ─── exit / power ───
            "Ctrl+Alt+Delete".quit = { };
            "Mod+Shift+P".power-off-monitors = { };
            "Mod+O" = {
              _props.repeat = false;
              toggle-overview = { };
            };
          };
        };
      };
    };
}

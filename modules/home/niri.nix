{ inputs, config, ... }:

{
  imports = [
    inputs.niri.homeModules.niri
  ];

  programs.niri = {
    enable = true;
    settings = {

      input = {
        keyboard = {
          xkb = {
            layout = "de";
          };
        };

        touchpad = {
          tap = true;
          dwt = true;
          natural-scroll = true;
        };

        focus-follows-mouse.enable = true;
      };

      outputs."edp-1" = {
        mode = {
          width = 1920;
          height = 1200;
          refresh = 60.0;
        };
        scale = 1.0;
      };

      gestures = {
        hot-corners.enable = false;
      };

      layout = {
        gaps = 8;
        center-focused-column = "never";
        background-color = "transparent";

        focus-ring = {
          width = 2;
          active.color = "#b4befe";
          inactive.color = "#1e1e2e";
          urgent.color = "#9b0000";
        };

        default-column-width.proportion = 0.5;

        struts = { };
      };

      spawn-at-startup = [
        {
          # Hinweis: Wenn noctalia-shell und xwayland-satellite zwei getrennte
          # Programme sind, sollten sie eigene Blöcke bekommen:
          command = [ "noctalia-shell" ];
        }
        {
          command = [ "xwayland-satellite" ];
        }
      ];

      prefer-no-csd = true;
      screenshot-path = null; # Echter null-Wert statt String

      environment = {
        electron_ozone_platform_hint = "auto";
        qt_qpa_platform = "wayland";
        qt_wayland_disable_windowdecoration = "1";
        xdg_session_type = "wayland";
        xdg_current_desktop = "niri";
        qt_qpa_platformtheme = "gtk3";
      };

      debug = {
        honor-xdg-activation-with-invalid-serial = { };
      };

      hotkey-overlay = {
        skip-at-startup = true;
      };

      # Animations-Block entfernt, da er den Niri-Defaults entsprach
      # und Obsolete-Warnungen erzeugt hat.

      window-rules = [
        {
          geometry-corner-radius = {
            top-left = 20.0;
            top-right = 20.0;
            bottom-left = 20.0;
            bottom-right = 20.0;
          };
          clip-to-geometry = true;
        }
        {
          matches = [ { title = "Discord"; } ];
          open-on-workspace = "2";
        }
        {
          matches = [ { title = "Spotify"; } ];
          open-on-workspace = "2";
        }
        {
          matches = [ { title = "Obsidian"; } ];
          open-on-workspace = "2";
          open-maximized = true;
        }
        {
          matches = [ { title = "Firefox"; } ];
          open-on-workspace = "1";
          open-maximized = true;
        }
      ];

      workspaces."1" = { };
      workspaces."2" = { };

      layer-rules = [
        {
          matches = [ { namespace = "^noctalia-wallpaper*"; } ];
          place-within-backdrop = true;
        }
      ];

      binds = {
        # ────────────── keybindings ──────────────

        # ─── noctalia-shell keybinds ───
        "mod+shift+escape".action.show-hotkey-overlay = { };

        # ─── applications ───
        "mod+return" = {
          hotkey-overlay.title = "open terminal: kitty";
          action.spawn = [ "kitty" ];
        };
        "mod+space" = {
          hotkey-overlay.title = "run an application: rofi";
          action.spawn-sh = [ "rofi -show drun" ];
        };
        "mod+b" = {
          hotkey-overlay.title = "open browser: firefox";
          action.spawn = [ "firefox" ];
        };
        "mod+alt+l" = {
          hotkey-overlay.title = "lock screen: swaylock";
          action.spawn = [ "swaylock" ];
        };
        "mod+e" = {
          hotkey-overlay.title = "file manager: nautilus";
          action.spawn = [ "nautilus" ];
        };

        # ─── audio controls ───
        "xf86audioraisevolume" = {
          allow-when-locked = true;
          action.spawn-sh = [ "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+ -l 1.0" ];
        };
        "xf86audiolowervolume" = {
          allow-when-locked = true;
          action.spawn-sh = [ "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-" ];
        };
        "xf86audiomute" = {
          allow-when-locked = true;
          action.spawn-sh = [ "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" ];
        };
        "xf86audiomicmute" = {
          allow-when-locked = true;
          action.spawn-sh = [ "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle" ];
        };

        "xf86audioplay" = {
          allow-when-locked = true;
          action.spawn-sh = [ "playerctl play-pause" ];
        };
        "xf86audiostop" = {
          allow-when-locked = true;
          action.spawn-sh = [ "playerctl stop" ];
        };
        "xf86audioprev" = {
          allow-when-locked = true;
          action.spawn-sh = [ "playerctl previous" ];
        };
        "xf86audionext" = {
          allow-when-locked = true;
          action.spawn-sh = [ "playerctl next" ];
        };
        "xf86monbrightnessup" = {
          allow-when-locked = true;
          action.spawn-sh = [ "brightnessctl --class=backlight set +10%" ];
        };
        "xf86monbrightnessdown" = {
          allow-when-locked = true;
          action.spawn-sh = [ "brightnessctl --class=backlight set 10%-" ];
        };

        # ─── window movement and focus ───
        "mod+q".action.close-window = { };

        "mod+left".action.focus-column-left = { };
        "mod+h".action.focus-column-left = { };
        "mod+right".action.focus-column-right = { };
        "mod+l".action.focus-column-right = { };
        "mod+up".action.focus-window-up = { };
        "mod+k".action.focus-window-up = { };
        "mod+down".action.focus-window-down = { };
        "mod+j".action.focus-window-down = { };

        "mod+shift+left".action.move-column-left = { };
        "mod+shift+h".action.move-column-left = { };
        "mod+shift+right".action.move-column-right = { };
        "mod+shift+l".action.move-column-right = { };
        "mod+shift+up".action.move-window-up = { };
        "mod+shift+k".action.move-window-up = { };
        "mod+shift+down".action.move-window-down = { };
        "mod+shift+j".action.move-window-down = { };

        "mod+home".action.focus-column-first = { };
        "mod+end".action.focus-column-last = { };
        "mod+ctrl+home".action.move-column-to-first = { };
        "mod+ctrl+end".action.move-column-to-last = { };

        "mod+ctrl+left".action.focus-monitor-left = { };
        "mod+ctrl+h".action.focus-monitor-left = { };
        "mod+ctrl+right".action.focus-monitor-right = { };
        "mod+ctrl+l".action.focus-monitor-right = { };
        "mod+ctrl+up".action.focus-monitor-up = { };
        "mod+ctrl+k".action.focus-monitor-up = { };
        "mod+ctrl+down".action.focus-monitor-down = { };
        "mod+ctrl+j".action.focus-monitor-down = { };

        "mod+shift+ctrl+left".action.move-column-to-monitor-left = { };
        "mod+shift+ctrl+right".action.move-column-to-monitor-right = { };
        "mod+shift+ctrl+up".action.move-column-to-monitor-up = { };
        "mod+shift+ctrl+down".action.move-column-to-monitor-down = { };

        # ─── workspace switching ───
        "mod+wheelscrolldown" = {
          cooldown-ms = 150;
          action.focus-workspace-down = { };
        };
        "mod+u" = {
          cooldown-ms = 150;
          action.focus-workspace-down = { };
        };
        "mod+wheelscrollup" = {
          cooldown-ms = 150;
          action.focus-workspace-up = { };
        };
        "mod+i" = {
          cooldown-ms = 150;
          action.focus-workspace-up = { };
        };
        "mod+shift+wheelscrolldown" = {
          cooldown-ms = 150;
          action.move-column-to-workspace-down = { };
        };
        "mod+shift+u" = {
          cooldown-ms = 150;
          action.move-column-to-workspace-down = { };
        };
        "mod+shift+wheelscrollup" = {
          cooldown-ms = 150;
          action.move-column-to-workspace-up = { };
        };
        "mod+shift+i" = {
          cooldown-ms = 150;
          action.move-column-to-workspace-up = { };
        };

        "mod+wheelscrollright".action.focus-column-right = { };
        "mod+wheelscrollleft".action.focus-column-left = { };
        "mod+shift+wheelscrollright".action.move-column-right = { };
        "mod+shift+wheelscrollleft".action.move-column-left = { };

        "mod+ctrl+shift+wheelscrolldown".action.move-column-right = { };
        "mod+ctrl+shift+wheelscrollup".action.move-column-left = { };

        "mod+1".action.focus-workspace = [ 1 ];
        "mod+2".action.focus-workspace = [ 2 ];
        "mod+3".action.focus-workspace = [ 3 ];
        "mod+4".action.focus-workspace = [ 4 ];
        "mod+5".action.focus-workspace = [ 5 ];
        "mod+6".action.focus-workspace = [ 6 ];
        "mod+7".action.focus-workspace = [ 7 ];
        "mod+8".action.focus-workspace = [ 8 ];
        "mod+9".action.focus-workspace = [ 9 ];

        "mod+shift+1".action.move-column-to-workspace = [ 1 ];
        "mod+shift+2".action.move-column-to-workspace = [ 2 ];
        "mod+shift+3".action.move-column-to-workspace = [ 3 ];
        "mod+shift+4".action.move-column-to-workspace = [ 4 ];
        "mod+shift+5".action.move-column-to-workspace = [ 5 ];
        "mod+shift+6".action.move-column-to-workspace = [ 6 ];
        "mod+shift+7".action.move-column-to-workspace = [ 7 ];
        "mod+shift+8".action.move-column-to-workspace = [ 8 ];
        "mod+shift+9".action.move-column-to-workspace = [ 9 ];

        "mod+tab".action.focus-workspace-previous = { };

        # ─── layout controls ───
        "mod+ctrl+f".action.expand-column-to-available-width = { };
        "mod+c".action.center-column = { };
        "mod+ctrl+c".action.center-visible-columns = { };
        "mod+minus".action.set-column-width = [ "-10%" ];
        "mod+equal".action.set-column-width = [ "+10%" ];
        "mod+shift+minus".action.set-window-height = [ "-10%" ];
        "mod+shift+equal".action.set-window-height = [ "+10%" ];

        # ─── modes ───
        "mod+t".action.toggle-window-floating = { };
        "mod+f".action.maximize-column = { };
        "mod+shift+f".action.fullscreen-window = { };
        "mod+w".action.toggle-column-tabbed-display = { };

        # ─── screenshots ───
        "mod+s" = {
          hotkey-overlay.title = "take a screenshot";
          action.spawn-sh = [ "${config.home.homeDirectory}/bin/screenshot.sh" ];
        };
        "mod+shift+s" = {
          hotkey-overlay.title = "take a screenshot select";
          action.spawn-sh = [ "${config.home.homeDirectory}/bin/screenshot.sh select" ];
        };

        # ─── emergency escape key ───
        "mod+escape" = {
          allow-inhibiting = false;
          action.toggle-keyboard-shortcuts-inhibit = { };
        };

        # ─── exit / power ───
        "ctrl+alt+delete".action.quit = { };
        "mod+shift+p".action.power-off-monitors = { };
        "mod+o" = {
          repeat = false;
          action.toggle-overview = { };
        };
      };
    };
  };
}

{
  programs.niri = {
    enable = false;
    settings = {
      input = {
        keyboard = {
          xkb.layout = "de";
          repeat-rate = 35;
          repeat-delay = 200;
        };
        touchpad = {
          tap = true;
          dwt = true;
          natural-scroll = false;
        };
      };

      # Ausgabe/Monitore
      # Du kannst "eDP-1" durch deinen Monitor-Namen ersetzen (niri msg outputs)
      outputs."eDP-1" = {
        scale = 1.0;
        mode = "1920x1080@60.000";
        hot-corners = "off";
      };

      # Layout-Einstellungen
      layout = {
        prefer-no-csd = true;
        gaps = 12;
        center-focused-column = "never";
    
        preset-column-widths = [
          { proportion = 1.0 / 3.0; }
          { proportion = 1.0 / 2.0; }
          { proportion = 2.0 / 3.0; }
        ];
    
        default-column-width = { proportion = 1.0 / 2.0; };

        focus-ring = {
          enable = true;
          width = 4;
          active.color = "#7fc8ff";
          inactive.color = "#505050";
        };

        border = {
          enable = false;
          width = 2;
          active.color = "#ffc87f";
          inactive.color = "#505050";
        };
      };

      # Fenster-Regeln (Beispiele)
      window-rules = [
        {
          matches = [{ title = ".*Firefox.*"; }];
          open-maximized = true;
        }
      ];

      # Keybindings
      # Nutze 'config.lib.niri.actions', um die Funktionen sauber anzusprechen
      binds = with config.lib.niri.actions; {
        # Terminals & Launcher
        "Mod+Return".action = spawn "kitty";
        "Mod+D".action = spawn-sh "rofi -show drun";
        "Mod+Shift+E".action = quit;

        # Fenster schließen
        "Mod+Q".action = close-window;

        # Fokus bewegen
        "Mod+Left".action = focus-column-left;
        "Mod+Down".action = focus-window-down;
        "Mod+Up".action = focus-window-up;
        "Mod+Right".action = focus-column-right;

        # Spalten verschieben
        "Mod+Shift+Left".action = move-column-left;
        "Mod+Shift+Right".action = move-column-right;

        # Scrolling/Layout Navigation
        "Mod+Page_Up".action = focus-workspace-up;
        "Mod+Page_Down".action = focus-workspace-down;
        "Mod+WheelScrollDown".action = focus-workspace-down;
        "Mod+WheelScrollUp".action = focus-workspace-up;

        # Spaltenbreite ändern
        "Mod+R".action = switch-preset-column-width;
        "Mod+F".action = maximize-column;
        "Mod+Shift+F".action = fullscreen-window;
        "Mod+C".action = center-column;

        # Screenshot
        "Print".action = screenshot;
        "Ctrl+Print".action = screenshot-screen;
        "Alt+Print".action = screenshot-window;
      };

      # Animationen (Optional, falls du sie anpassen willst)
      animations = {
        # enable = false; # Zum Deaktivieren einfach auf false setzen
        slowdown = 1.0;
      };
    };
  };
}

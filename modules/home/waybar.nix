{
  programs.waybar = {
    enable = true;

    settings = {
      position = "top";
      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ ];
      modules-right = [
        "tray"
        "bluetooth"
        "wireplumber"
        "network"
        "battery"
        "clock"
      ];

      clock = {
        format = "{:%H:%M}";
        format-alt = "{:%a %d %H:%M}";
        locale = "de_DE.UTF-8";
        tooltip-format = "<tt><small>{calendar}</small></tt>";
        calendar = {
          mode = "month";
          weeks-pos = "right";
          on-scroll = 1;
          format = {
            months = "<span color='#89b4fa'><b>{}</b></span>";
            today = "<span color='#a6e3a1'><b>{}</b></span>";
            weeks = "<span color='#b4befe'><b>{}</b></span>";
          };
        };
      };

      battery = {
        states = {
          warning = 30;
          critical = 15;
        };
        format = "{icon}";
        format-warning = "{icon}";
        format-critical = "{icon}";
        format-charging = "";
        format-plugged = "";
        format-full = "";
        format-icons = [ "" "" "" "" "" ];
        tooltip-format = "{capacity}%";
      };

      wireplumber = {
        format = "{icon}";
        format-muted = "";
        tooltip-format = "{volume}%";
        format-icons = {
          default = [ "" "" " " ];
        };
        on-click = "pavucontrol";
      };

      bluetooth = {
        format = "";
        format-connected = "";
        tooltip-format-connected = "{device_alias}";
      };

      network = {
        format-wifi = "{icon}";
        format-ethernet = "󰲝";
        format-disconnected = "";
        tooltip-format-wifi = "{essid}";
        tooltip-format-ethernet = "{ifname}";
        tooltip-format-disconnected = "Disconnected";
        format-icons = [
          "󰤯"
          "󰤟"
          "󰤢"
          "󰤥"
          "󰤨"
        ];
      };

      tray = {
        spacing = 15;
        icons = { };
      };
    };

    style = {
      colors = {
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#1e1e2e";
        mantle = "#181825";
        crust = "#11111b";
      };

      global = {
        "*" = {
          font-family = "";
          font-size = "16px";
          "font-weight" = "bold";
        };
    
        "window#waybar" = {
          "background-color" = "@crust";
          color = "@text";
          "transition-property" = "background-color";
          "transition-duration" = "0.5s";
          "border-bottom" = "1px solid @overlay1";
        };
    
        button = {
          "box-shadow" = "inset 0 -3px transparent";
          border = "none";
          "border-radius" = "0";
        };
      };
    
      workspaces = {
        "#workspaces button:hover" = {
          color = "@blue";
          "box-shadow" = "inherit";
          "text-shadow" = "inherit";
          background = "@crust";
          border = "@crust";
        };
    
        "#workspaces button" = {
          padding = "0 5px";
          color = "@surface2";
          margin = "4px 0 4px 6px";
          transition = "color 200ms ease-in-out";
        };
    
        "#workspaces button.selected" = {
          color = "@blue";
        };
    
        "#workspaces button.active" = {
          color = "@mauve";
        };
    
        "#workspaces button.urgent" = {
          color = "@red";
        };
    
        "#workspaces" = {
          margin = "0 4px";
        };
      };
    
      modules = {
        "#clock" = {
          color = "@maroon";
          "margin-left" = "10px";
          "margin-right" = "10px";
        };
    
        "#battery" = {
          color = "@green";
          "margin-left" = "10px";
          "margin-right" = "10px";
        };
    
        "#battery.warning:not(.charging)" = {
          color = "@red";
          "margin-left" = "10px";
          "margin-right" = "10px";
        };
    
        "#battery.critical:not(.charging)" = {
          color = "@red";
          animation-name = "blink";
          animation-duration = "0.7s";
          "animation-timing-function" = "steps(12)";
          "animation-iteration-count" = "infinite";
          "animation-direction" = "alternate";
        };
    
        "#wireplumber" = {
          color = "@mauve";
          "margin-left" = "10px";
          "margin-right" = "5px";
        };
    
        "#network" = {
          color = "@blue";
          "margin-left" = "10px";
          "margin-right" = "10px";
        };
    
        "#bluetooth" = {
          color = "@peach";
          "margin-left" = "10px";
          "margin-right" = "5px";
        };
      };
    
      animations = {
        "@keyframes blink" = {
          to = {
            color = "#000000";
          };
        };
      };
    };
  };
}

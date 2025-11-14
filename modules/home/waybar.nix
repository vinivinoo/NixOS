{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        position = "top";
        modules-left = ["hyprland/workspaces"];
        modules-center = [];
        modules-right = [
          "tray"
          "bluetooth"
          "wireplumber"
          "network"
          "battery"
          "clock"
        ];
      };
        
      "clock" = {
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

      "battery" = {
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

      "wireplumber" = {
        format = "{icon}";
        format-muted = "";
        tooltip-format = "{volume}%";
        format-icons = {
          default = [ "" "" " " ];
        };
        on-click = "pavucontrol";
      };

      "bluetooth" = {
        format = "";
        format-connected = "";
        tooltip-format-connected = "{device_alias}";
      };

      "network" = {
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

      "tray" = {
        spacing = 15;
        icons = { };
      };
    };
    style = ''
      @define-color rosewater #f5e0dc;
      @define-color flamingo #f2cdcd;
      @define-color pink #f5c2e7;
      @define-color mauve #cba6f7;
      @define-color red #f38ba8;
      @define-color maroon #eba0ac;
      @define-color peach #fab387;
      @define-color yellow #f9e2af;
      @define-color green #a6e3a1;
      @define-color teal #94e2d5;
      @define-color sky #89dceb;
      @define-color sapphire #74c7ec;
      @define-color blue #89b4fa;
      @define-color lavender #b4befe;
      @define-color text #cdd6f4;
      @define-color subtext1 #bac2de;
      @define-color subtext0 #a6adc8;
      @define-color overlay2 #9399b2;
      @define-color overlay1 #7f849c;
      @define-color overlay0 #6c7086;
      @define-color surface2 #585b70;
      @define-color surface1 #45475a;
      @define-color surface0 #313244;
      @define-color base #1e1e2e;
      @define-color mantle #181825;
      @define-color crust #11111b;

      * {
        font-family: "";
        font-size: 16px;
        font-weight: bold;
      }

      window#waybar {
        background-color: @crust;
        color: @text;
        transition-property: background-color;
        transition-duration: 0.5s;
        border-bottom: 1px solid @overlay1;
      }

      button {
        box-shadow: inset 0 -3px transparent;
        border: none;
        border-radius: 0;
      }

      #workspaces button:hover {
        color: @blue;
        box-shadow: inherit;
        text-shadow: inherit;
        background: @crust;
        border: @crust;
      }

      #workspaces button {
        padding: 0 5px;
        color: @surface2;
        margin: 4px 0 4px 6px;
        transition: color 200ms ease-in-out;
      }

      #workspaces button.selected {
        color: @blue;
      }

      #workspaces button.active {
        color: @mauve;
      }

      #workspaces button.urgent {
        color: @red;
      }

      #workspaces {
        margin: 0 4px;
      }

      #clock {
        color: @maroon;
        margin-left: 10px;
        margin-right: 10px;
      }

      #battery {
        color: @green;
        margin-left: 10px;
        margin-right: 10px;
      }

      #battery.warning:not(.charging) {
        color: @red;
        margin-left: 10px;
        margin-right: 10px;
      }

      @keyframes blink {
        to {
          color: #000000;
        }
      }

      #battery.critical:not(.charging) {
        color: @red;
        animation-name: blink;
        animation-duration: 0.7s;
        animation-timing-function: steps(12);
        animation-iteration-count: infinite;
        animation-direction: alternate;
      }

      #wireplumber {
        color: @mauve;
        margin-left: 10px;
        margin-right: 5px;
      }

      #network {
        color: @blue;
        margin-left: 10px;
        margin-right: 10px;
      }

      #bluetooth {
        color: @peach;
        margin-left: 10px;
        margin-right: 5px;
      }
    '';
  };
}

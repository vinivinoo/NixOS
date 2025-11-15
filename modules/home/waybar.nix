{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
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
          format-icons.default = [
            ""
            ""
            ""
          ];
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
    };
    style = ''

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

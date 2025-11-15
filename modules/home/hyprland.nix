{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {
      monitor = "eDP-1,1920x1200@60,0x0,1";

      exec-once = [
        "waybar & swaync"
        "sww-daemon"
        "swayidle -w timeout 1800 'swaylock -f' timeout 1830 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'"
        "sww img ~/Bilder/Backgrounds/makko-background.png"
      ];

      general = {
        gaps_in = 2;
        gaps_out = 10;
        border_size = 2;
        "col.active_border" = "rgb(b4befe)";
        "col.inactive_border" = "rgb(1e1e2e)";
        resize_on_border = true;
        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        active_opacity = "1.0";
        inactive_opacity = "1.0";
        blur = {
          enabled = true;
          size = 3;
          passes = 1;
          vibrancy = 0.1696;
        };
      };

      animations = {
        enabled = true;
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [  
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      input = {
        kb_layout = "de";
        follow_mouse = 1;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
        };
      };

      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, return, exec, $TERMINAL"
        "$mainMod, Q, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, V, togglefloating,"
        "$mainMod, space, exec, $MENU"
        "$mainMod, P, pseudo,"
        "$SUPER_SHIFT, R, exec, hyprctl reload; notify-send 'Hyprland Reloaded!'"
        "$mainMod, F, fullscreen,"
        "$mainMod, B, exec, $BROWSER"
        
        "$SUPER_SHIFT, O, exec, swaylock"
        
        "$mainMod, PRINT, exec, hyprshot -m window -o ~/Bilder/Screenshots/"
        
        ", PRINT, exec, hyprshot -m output -o ~/Bilder/Screenshots/"
        
        "$shiftMod, PRINT, exec, hyprshot -m region -o ~/Bilder/Screenshots/"
        
        "$mainMod, H, movefocus, l"
        "$mainMod, L, movefocus, r"
        "$mainMod, K, movefocus, u"
        "$mainMod, J, movefocus, d"
        
        "$SUPER_SHIFT, H, movewindow, l"
        "$SUPER_SHIFT, L, movewindow, r"
        "$SUPER_SHIFT, K, movewindow, u"
        "$SUPER_SHIFT, J, movewindow, d"
        
        "$mainMod, right, resizeactive, 100 0"
        "$mainMod, left, resizeactive, -100 0"
        "$mainMod, up, resizeactive, 0 -100"
        "$mainMod, down, resizeactive, 0 100"
        
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"
        
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      bindel = [
        ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
        ",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
        ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
      ];

      bindl = [
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
      ];
 
      windowrulev2 = [
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}

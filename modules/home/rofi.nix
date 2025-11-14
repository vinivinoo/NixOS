{ config, pkgs, lib, ... }:

let
  mk = config.lib.formats.rasi.mkLiteral;
in
{
  programs.rofi = {
    enable = true;
    font = "Iosevka 12";

    # Theme expressed as an attribute-set using rasi mkLiteral values
    theme = {
      

      "*" = {
        rosewater = mk "#f5e0dc";
        flamingo  = mk "#f2cdcd";
        pink      = mk "#f5c2e7";
        mauve     = mk "#cba6f7";
        red       = mk "#f38ba8";
        maroon    = mk "#eba0ac";
        peach     = mk "#fab387";
        yellow    = mk "#f9e2af";
        green     = mk "#a6e3a1";
        teal      = mk "#94e2d5";
        sky       = mk "#89dceb";
        sapphire  = mk "#74c7ec";
        blue      = mk "#89b4fa";
        lavender  = mk "#b4befe";
        text      = mk "#cdd6f4";
        subtext1  = mk "#bac2de";
        subtext0  = mk "#a6adc8";
        overlay2  = mk "#9399b2";
        overlay1  = mk "#7f849c";
        overlay0  = mk "#6c7086";
        surface2  = mk "#585b70";
        surface1  = mk "#45475a";
        surface0  = mk "#313244";
        base      = mk "#1e1e2e";
        mantle    = mk "#181825";
        crust     = mk "#11111b";

        # Extended Catppuccin-style variables (from your original theme)
        background                  = mk "@base";
        foreground                  = mk "@text";
        lightfg                     = mk "@text";
        lightbg                     = mk "@mantle";
        separatorcolor              = mk "@foreground";
        urgent-foreground           = mk "@red";
        alternate-urgent-background = mk "@lightbg";
        border-color                = mk "@foreground";
        normal-background           = mk "@background";
        selected-urgent-background  = mk "@red";
        alternate-active-background = mk "@lightbg";
        spacing                     = mk "2";
        alternate-normal-foreground = mk "@foreground";
        urgent-background           = mk "@background";
        selected-normal-foreground  = mk "@lightbg";
        active-foreground           = mk "@blue";
        selected-active-background  = mk "@blue";
        active-background           = mk "@background";
        selected-normal-background  = mk "@lightfg";
        alternate-normal-background = mk "@lightbg";
        selected-urgent-foreground  = mk "@background";
        normal-foreground           = mk "@foreground";
        alternate-urgent-foreground = mk "@red";
        alternate-active-foreground = mk "@blue";
      };

      # Basic element styling
      element = {
        padding = mk "1px";
        cursor  = mk "pointer";
        spacing = mk "5px";
        border  = mk "0";
      };

      element-text = {
        "background-color" = mk "transparent";
        cursor              = mk "inherit";
        highlight           = mk "inherit";
        "text-color"       = mk "inherit";
      };

      element-icon = {
        "background-color" = mk "transparent";
        size                = mk "1.0000em";
        cursor              = mk "inherit";
        "text-color"       = mk "inherit";
      };

      window = {
        padding = mk "5";
        "background-color" = mk "@background"; # will be replaced by rasi variable
        border  = mk "1";
      };

      mainbox = {
        padding = mk "0";
        border  = mk "0";
      };

      message = {
        padding = mk "1px";
        "border-color" = mk "@separatorcolor";
        border = mk "2px dash 0px 0px";
      };

      textbox = {
        "text-color" = mk "@foreground";
      };

      listview = {
        padding = mk "2px 0px 0px";
        scrollbar = mk "true";
        "border-color" = mk "@separatorcolor";
        spacing = mk "2px";
        "fixed-height" = mk "0";
        border = mk "2px dash 0px 0px";
      };

      scrollbar = {
        width = mk "4px";
        padding = mk "0";
        "handle-width" = mk "8px";
        border = mk "0";
        "handle-color" = mk "@normal-foreground";
      };

      sidebar = {
        "border-color" = mk "@separatorcolor";
        border = mk "2px dash 0px 0px";
      };

      button = {
        cursor = mk "pointer";
        spacing = mk "0";
        "text-color" = mk "@normal-foreground";
      };

      "button selected" = {
        "background-color" = mk "@selected-normal-background";
        "text-color" = mk "@selected-normal-foreground";
      };

      # selectors with spaces need to be provided as string keys
      "element normal.normal" = {
        "background-color" = mk "@normal-background";
        "text-color" = mk "@normal-foreground";
      };

      "element normal.urgent" = {
        "background-color" = mk "@urgent-background";
        "text-color" = mk "@urgent-foreground";
      };

      "element selected.normal" = {
        "background-color" = mk "@selected-normal-background";
        "text-color" = mk "@selected-normal-foreground";
      };

      "element selected.active" = {
        "background-color" = mk "@selected-active-background";
        "text-color" = mk "@selected-active-foreground";
      };

      # ... you can continue adding the other selectors in the same style
    };

    # Extra rofi config (same shape as rofi's extraConfig)
    extraConfig = {
      terminal = "${pkgs.alacritty}/bin/alacritty";
      modi = "combi";
      "combi-modi" = "window,drun,ssh";
    };
  };
}



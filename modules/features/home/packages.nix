{
  self,
  inputs,
  ...
}: {
  flake.homeModules.packages = {
    pkgs,
    inputs,
    ...
  }: {
    home.packages = with pkgs; [
      # desktop
      papirus-icon-theme
      grim
      hyprland
      kitty
      libnotify
      libdisplay-info
      nwg-look
      slurp
      swayidle
      swaylock-effects
      swaynotificationcenter
      awww
      waybar
      xdg-desktop-portal-hyprland
      oculante
      nautilus

      # cursor
      bibata-cursors
	
    ];
  };
}

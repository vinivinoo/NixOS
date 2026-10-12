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
      # devTools
      git
      helix
      neovim
      obsidian
      vscode
      yazi
      zed-editor
      fff

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

      # media
      anki-bin
      spotify
      signal-desktop
      vesktop
      brave
      prismlauncher

      # work
      geteduroam
      libreoffice
      rclone
      openconnect
      nautilus
      thunderbird
      inputs.zennotes.packages.${pkgs.system}.default

      # fonts
      fira-sans
      nerd-fonts.fira-code
      dejavu_fonts
      noto-fonts-color-emoji
      nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only

      # cursor
      bibata-cursors
	
      # programming

      gcc
      temurin-bin-21
    ];
  };
}

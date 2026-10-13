{ self, inputs, ... }: {

  flake.homeModules.fonts = { pkgs }: {

    home.packages = with pkgs; [
      fira-sans
      nerd-fonts.fira-code
      dejavu_fonts
      noto-fonts-color-emoji
      nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only
    ];

    fonts.fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "FiraMono Nerd Font" ];
        sansSerif = [ "DejaVu Sans" ];
        serif = [ "FiraCode Nerd Font" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}

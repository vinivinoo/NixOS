{ self, inputs, ... }: {

  flake.homeModules.fonts = { pkgs, ... }: {

    home.packages = with pkgs; [
      nerd-fonts.fira-code
      inter
      dejavu_fonts
      noto-fonts-color-emoji
      nerd-fonts.jetbrains-mono
    ];

    fonts.fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "JetbrainsMono Nerd Font" ];
        sansSerif = [ "Inter" ];
        serif = [ "DejaVu Serif" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}

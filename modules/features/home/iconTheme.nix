{ self, inputs, ... }: {

  flake.homeModules.iconTheme = { pkgs, ... }: {
    home.packages = with pkgs; [
      # desktop
      papirus-icon-theme
    ];

    gtk.iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    xresources.properties = {
      "Xcursor.theme" = "Papirus";
    };
  };
}

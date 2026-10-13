{ self, inputs, ... }: {

  flake.homeModules.cursor = { pkgs, ... }: {
    home.packages = with pkgs; [
      bibata-cursors
    ];

    home.pointerCursor = {
      enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
      gtk.enable = true;
    };

    gtk.cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
  };
}

{ pkgs, ... }:
{
  home.pointerCursor = {
    enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-bodern-Ice";
    size = 24;
    gtk.enable = true;
  };
}

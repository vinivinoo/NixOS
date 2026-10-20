{ self, inputs, ... }: {

  flake.homeModules.gtk = { pkgs, ... }: {
    gtk = {
        enable = true;
    };
  };
}

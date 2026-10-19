{ self, inputs, ... }: {

  flake.homeModules.catppuccin = { inputs, ... }: {
    imports = [
      inputs.catppuccin.homeModules.catppuccin
    ];

    # NOTE: enable to silence evaluation warning, because catppuccin hasn't updated yet 
    home.pointerCursor.enable = true;

    catppuccin = {
      enable = true;
      autoEnable = true;
      flavor = "mocha";
      accent = "lavender";

      cursors = {
        enable = true;
        accent = "light";
      };
    };
  };
}

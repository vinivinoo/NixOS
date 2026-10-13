{ self, inputs, ... }: {

  flake.homeModules.catppuccin = { inputs, ... }: {
    imports = [
      inputs.catppuccin.homeModules.catppuccin
    ];

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

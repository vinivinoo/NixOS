{ self, inputs, ... }: {

  flake.nixosModules.catppuccin = {
    imports = [
      inputs.catppuccin.nixosModules.catppuccin
    ];
    catppuccin = {
      enable = true;
      autoEnable = true;
      flavor = "mocha";
      accent = "lavender";
    };
  };

  flake.homeModules.catppuccin = { inputs, ... }: {
    imports = [
      inputs.catppuccin.homeModules.catppuccin
    ];

    catppuccin = {
      enable = true;
      autoEnable = true;
      flavor = "mocha";
      accent = "lavender";
    };
  };
}

{ self, inputs, ... }: {
  
  flake.homeModules.helium = {inputs, ... }: {
    imports = [
      inputs.helium-flake.homeModules.default
    ];

    programs.helium = {
      enable = true;
    };
  };
}

{ self, inputs, ... }: {

  flake.homeModules.vesktop = {
    programs.vesktop = {
      enable = true;
    };
  };
}

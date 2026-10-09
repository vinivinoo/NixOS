{ self, inputs, ... }: {

  flake.homeModules.bat = {
    programs.bat = {
      enable = true;
    };
  };
}

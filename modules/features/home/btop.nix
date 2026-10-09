{ self, inputs, ... }: {

  flake.homeModules.btop = {
    programs.btop = {
      enable = true;
      settings = {
        vim_keys = true;
      };
    };
  };
}

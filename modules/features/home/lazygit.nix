{ self, inputs, ... }: {

  flake.homeModules.lazygit = {
    programs.lazygit = {
      enable = true;
    };
  };
}

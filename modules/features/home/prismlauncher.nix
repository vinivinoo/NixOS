{ self, inputs, ... }: {

  flake.homeModules.prismlauncher = {
    programs.prismlauncher = {
      enable = true;
    };
  };
}

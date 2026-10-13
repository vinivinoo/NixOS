{ self, inputs, ... }: {

  flake.homeModules.prismlauncher = { pkgs, ... }: {
    programs.prismlauncher = {
      enable = true;
    };

    home.packages = with pkgs; [
      # temurin-bin-8
      # temurin-bin-17
      temurin-bin-21
    ];
  };
}

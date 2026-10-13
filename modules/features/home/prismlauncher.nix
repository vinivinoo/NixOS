{ self, inputs, ... }: {

  flake.homeModules.prismlauncher = { pkgs, ... }: {
    programs.prismlauncher = {
      enable = true;
    };

    home.packages = with pkgs; [
      temurin-jre-8
      temurin-jre-17
      temurin-jre-21
    ];
  };
}

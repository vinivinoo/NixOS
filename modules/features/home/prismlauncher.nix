{ self, inputs, ... }: {
  flake.homeModules.prismlauncher = { pkgs, ... }: {
    programs.prismlauncher = {
      enable = true;
      package = pkgs.prismlauncher.overrideAttrs (old: {
        qtWrapperArgs = (old.qtWrapperArgs or []) ++ [ "--set SDL_VIDEO_DRIVER wayland" ];
      });
      settings = {
        Env = ''{\"SDL_VIDEO_DRIVER\":\"wayland\"}'';
      };
    };

    home.packages = with pkgs; [
      # temurin-bin-8
      # temurin-bin-17
      temurin-bin-21
    ];
  };
}

{
  self,
  inputs,
  ...
}: {
  flake.homeModules.gaming = {pkgs, ...}: {
    programs.steam.enable = true;

    home.packages = with pkgs; [
      prismlauncher
    ];
  };
}

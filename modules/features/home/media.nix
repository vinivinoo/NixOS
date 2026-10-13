
{
  self,
  inputs,
  ...
}: {
  flake.homeModules.media = {
    pkgs,
    inputs,
    ...
  }: {
    home.packages = with pkgs; [
      # media
      spotify
      signal-desktop
      vesktop
    ];
  };
}

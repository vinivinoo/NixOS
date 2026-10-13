{
  self,
  inputs,
  ...
}: {
  flake.homeModules.work = {
    pkgs,
    inputs,
    ...
  }: {
    home.packages = with pkgs; [
      # work
      anki-bin
      geteduroam
      libreoffice
      rclone
      openconnect
      thunderbird
      inputs.zennotes.packages.${pkgs.system}.default
    ];
  };
}

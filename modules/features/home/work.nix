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
      localsend
      libreoffice
      rclone
      openconnect
      thunderbird
    ];
  };
}

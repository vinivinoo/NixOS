{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.nix = {
    pkgs,
    lib,
    ...
  }: {
    nixpkgs.config.allowUnfree = true;
    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}

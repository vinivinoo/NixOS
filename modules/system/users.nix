{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.users = {pkgs, ...}: {
    users.users.vini = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
      ];
      shell = pkgs.zsh;
    };
  };
}

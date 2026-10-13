{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.users = { pkgs, lib, ...}: {
    users.users.vini = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
      ];
      shell = lib.getExe pkgs.zsh;
    };
  };
}

{ pkgs, ... }:

{
  users.users.vini = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
  };
}

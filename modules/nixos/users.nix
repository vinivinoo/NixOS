{ pkgs, ... }:

{
  users.users.vini = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };
}

{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.laptopConfiguration = { inputs, ... }: {
    imports = with self.nixosModules; [
      laptopHardware
      blueman
      boot
      catppuccin
      hardware
      keyd
      networks
      nix
      openssh
      pipewire
      power
      sddm
      steam
      users
      videoDrivers
      xserver
      xwayland
    ];

    networking.hostName = "thinkpad-t14";

    time.timeZone = "Europe/Berlin";

    i18n = {
      defaultLocale = "de_DE.UTF-8";
    };

    console = {
      keyMap = "de";
    };

    environment.pathsToLink = [
      "/share/applications"
      "/share/xdg-desktop-portal"
    ];

    system.stateVersion = "25.05";
  };
}

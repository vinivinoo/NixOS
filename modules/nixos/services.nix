{
  services = {
    pipewire = {
      enable = true;
      pulse.enable = true;
    };

    openssh = {
      enable = true;
      ports = [ 443 ];
    };

    blueman = {
      enable = true;
    };

    xserver = {
        enable = false;
    };

    power-profiles-daemon.enable = true;
    upower.enable = true;
  };
  
  hardware.bluetooth.enable = true;
}

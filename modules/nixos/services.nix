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
  };

  hardware.bluetooth.enable = true;
}

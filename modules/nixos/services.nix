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
    
    gnome.gnome-keyring = {
        enable = true;
    };
  };

  hardware.bluetooth.enable = true;
}

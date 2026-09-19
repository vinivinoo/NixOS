{
  services = {
    pipewire = {
      enable = true;
      pulse.enable = true;
    };

    openssh = {
      enable = true;
      ports = [443];
    };

    blueman = {
      enable = true;
    };

    xserver = {
      enable = true;
      xkb = {
        layout = "de,se";
        options = "grp:alt_caps_toggle";
      };
    };

    flatpak = {
      enable = true;
    };

    keyd = {
      enable = true;
      keyboards.default = {
        ids = ["*"];
        settings = {
          main = {
            capslock = "overload(control, esc)";
          };
        };
      };
    };

    gvfs = {
      enable = true;
    };

    displayManager.sddm = {
      enable = true;
      # enable xserver instead of wayland to enable cursor
      wayland.enable = true;
    };

    power-profiles-daemon.enable = true;
    upower.enable = true;
  };

  hardware.bluetooth.enable = true;
}

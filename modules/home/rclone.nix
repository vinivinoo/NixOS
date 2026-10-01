{pkgs, ...}: {
  # 1. Dein bestehender Mount für das gesamte Google Drive (z.B. für Bilder)
  systemd.user.services.gdrive-mount = {
    Unit = {
      Description = "Mount Google Drive via Rclone";
      After = ["network-online.target"];
    };
    Service = {
      ExecStartPre = "${pkgs.coreutils}/bin/mkdir -p %h/GoogleDrive";
      ExecStart = ''
        ${pkgs.rclone}/bin/rclone mount gdrive: %h/GoogleDrive \
          --vfs-cache-mode full \
          --vfs-cache-max-size 10G
      '';
      ExecStop = "/run/wrappers/bin/fusermount -u %h/GoogleDrive";
      Restart = "on-failure";
      RestartSec = "10s";
    };
    Install = {
      WantedBy = ["default.target"];
    };
  };

  # 2. Der neue, schnelle Bidirektional-Sync nur für deinen vinis-vault (Notizen)
  systemd.user.services.vinis-vault-sync = {
    Unit = {
      Description = "Bidirectional sync for vinis-vault with Google Drive";
      After = ["network-online.target"];
    };
    Service = {
      Type = "oneshot";
      ExecStartPre = "${pkgs.coreutils}/bin/mkdir -p %h/vinis-vault";
      ExecStart = "${pkgs.rclone}/bin/rclone bisync %h/vinis-vault gdrive:vinis-vault --max-lock 2m";
    };
  };

  systemd.user.timers.vinis-vault-sync = {
    Unit = {
      Description = "Timer for vinis-vault sync";
    };
    Timer = {
      OnBootSec = "2m";
      OnUnitActiveSec = "10m";
      Unit = "vinis-vault-sync.service";
    };
    Install = {
      WantedBy = ["timers.target"];
    };
  };
}

{pkgs, ...}: {
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
}

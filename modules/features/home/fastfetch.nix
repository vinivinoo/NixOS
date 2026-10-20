{ self, inputs, ... }: {
  flake.homeModules.fastfetch = {
    programs.fastfetch = {
      enable = true;
      settings = {
        "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
        logo = {
          source = "~/nixos/config/logos/Spider-Man.txt";
          color = {
            "1" = "0";
          };
        };
        display = {
          separator = "  ";
        };
        modules = [
          {
            key = "{#34}╭───────────╮{#keys}";
            type = "custom";
          }
          {
            key = "{#34}│{#keys} {#31} user    {#keys}{#34}│{#keys}";
            type = "title";
            format = "{user-name}";
          }
          {
            key = "{#34}│{#keys} {#32}󰇅 hname   {#keys}{#34}│{#keys}";
            type = "title";
            format = "{host-name}";
          }
          {
            key = "{#34}│{#keys} {#33}󰅐 uptime  {#keys}{#34}│{#keys}";
            type = "uptime";
          }
          {
            key = "{#34}│{#keys} {#34}{icon} distro  {#keys}{#34}│{#keys}";
            type = "os";
          }
          {
            key = "{#34}│{#keys} {#35} kernel  {#keys}{#34}│{#keys}";
            type = "kernel";
          }
          {
            key = "{#34}│{#keys} {#36}󰇄 desktop {#keys}{#34}│{#keys}";
            type = "de";
          }
          {
            key = "{#34}│{#keys} {#31} term    {#keys}{#34}│{#keys}";
            type = "terminal";
          }
          {
            key = "{#34}│{#keys} {#32} shell   {#keys}{#34}│{#keys}";
            type = "shell";
          }
          {
            key = "{#34}│{#keys} {#33}󰍛 cpu     {#keys}{#34}│{#keys}";
            type = "cpu";
            showPeCoreCount = true;
          }
          {
            key = "{#34}│{#keys} {#34}󰉉 disk    {#keys}{#34}│{#keys}";
            type = "disk";
            folders = "/";
          }
          {
            key = "{#34}│{#keys} {#35} memory  {#keys}{#34}│{#keys}";
            type = "memory";
          }
          {
            key = "{#34}│{#keys} {#36}󰩟 network {#keys}{#34}│{#keys}";
            type = "localip";
            format = "{ipv4} ({ifname})";
          }
          {
            key = "{#34}├───────────┤{#keys}";
            type = "custom";
          }
          {
            key = "{#34}│{#keys} {#39} colors  {#keys}{#34}│{#keys}";
            type = "colors";
            symbol = "circle";
          }
          {
            key = "{#34}╰───────────╯{#keys}";
            type = "custom";
          }
        ];
      };
    };
  };
}

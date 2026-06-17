{
  programs.nvf.settings.vim = {
    dashboard = {
      dashboard-nvim = {
        enable = true;
        setupOpts = {
          theme = "hyper";
          config = {
            header = [
              "                                                                       "
              "                                                                     "
              "       ████ ██████           █████      ██                     "
              "      ███████████             █████                             "
              "      █████████ ███████████████████ ███   ███████████   "
              "     █████████  ███    █████████████ █████ ██████████████   "
              "    █████████ ██████████ █████████ █████ █████ ████ █████   "
              "  ███████████ ███    ███ █████████ █████ █████ ████ █████  "
              " ██████  █████████████████████ ████ █████ █████ ████ ██████ "
              "                                                                       "
            ];
            center = [
              {
                icon = " ";
                desc = "Find file";
                key = "f";
                action = "FzfLua files";
              }
              {
                icon = " ";
                desc = "New file";
                key = "n";
                action = "ene | startinsert";
              }
              {
                icon = " ";
                desc = "Recent files";
                key = "r";
                action = "FzfLua oldfiles"; # Alternativ "Telescope oldfiles"
              }
              {
                icon = " ";
                desc = "Find text";
                key = "g";
                action = "FzfLua live_grep"; # Alternativ "Telescope live_grep"
              }
              {
                icon = " ";
                desc = "Config";
                key = "c";
                action = "FzfLua files cwd=~/.config/nvim"; # Pfad anpassen falls nötig
              }
              {
                icon = " ";
                desc = "Restore Session";
                key = "s";
                action = "lua require('persistence').load()"; # Falls persistence aktiv ist
              }
              {
                icon = " ";
                desc = "Quit";
                key = "q";
                action = "qa";
              }
            ];
          };
        };
      };
    };
  };
}

{
  programs.nvf.settings.vim = {
    dashboard = {
      dashboard-nvim = {
        enable = true;
        setupOpts = {
          theme = "doom";
          config = {
            header = [
              "                                                                       "
              "                                                                       "
              "                                                                       "
              "                                                                       "
              "                                                                       "
              "                                                                       "
              "                                                                       "
              "                                                                       "
              "                                                                       "
              "                                                                       "
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
              "                                                                       "
              "                                                                       "
            ];

            week_header = {
              enable = false;
            };

            project = {
              enable = true;
              action = "FzfLua files cwd=";
            };

            center = [
              {
                icon = " ";
                desc = "Find file";
                key = "f";
                action = "lua require('fzf-lua').files()";
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
                action = "lua require('fzf-lua').oldfiles()"; # Alternativ "Telescope oldfiles"
              }
              {
                icon = " ";
                desc = "Find text";
                key = "s";
                action = "lua require('fzf-lua').live_grep()"; # Alternativ "Telescope live_grep"
              }
              {
                icon = " ";
                desc = "Config";
                key = "c";
                action = "lua require('fzf-lua').files({ cwd='~/nixos' })"; # Pfad anpassen falls nötig
              }
              {
                icon = " ";
                desc = "Restore Session";
                key = "s";
                action = "lua require('session_manager').load_last_session()"; # Falls persistence aktiv ist
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

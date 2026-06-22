{
  programs.nvf.settings.vim = {
    mini = {
      ai.enable = true;
      icons.enable = true;
      surround = {
        enable = true;
        setupOpts = {
          mappings = {
            add = "gsa"; # Surround hinzufügen (Normal und Visual)
            delete = "gsd"; # Surround löschen
            find = "gsf"; # Surround vorwärts suchen
            find_left = "gsF"; # Surround rückwärts suchen
            highlight = "gsh"; # Surround hervorheben
            replace = "gsr"; # Surround ersetzen
            update_n_lines = "gsn"; # Zeilenanzahl anpassen
          };
        };
      };
    };
    # keymaps = [
    #   {
    #     mode = "n, x";
    #     key = "gsa";
    #     action = ""
    #     silent = true;
    #     desc = "Add Surrounding";
    #   }
    #   {
    #     mode = "n";
    #     key = "gsd";
    #     action = ""
    #     silent = true;
    #     desc = "Delete Surrounding";
    #   }
    #   {
    #     mode = "n";
    #     key = "gsf";
    #     action = ""
    #     silent = true;
    #     desc = "Find Right Surrounding";
    #   }
    #   {
    #     mode = "n";
    #     key = "gsF";
    #     action = ""
    #     silent = true;
    #     desc = "Find Left Surrounding";
    #   }
    #   {
    #     mode = "n";
    #     key = "gsh";
    #     action = ""
    #     silent = true;
    #     desc = "Highlight Surrounding";
    #   }
    #   {
    #     mode = "n";
    #     key = "gsn";
    #     action = ""
    #     silent = true;
    #     desc = "Update Surrounding";
    #   }
    #   {
    #     mode = "n";
    #     key = "gsr";
    #     action = ""
    #     silent = true;
    #     desc = "Replace Surrounding";
    #   }
    # ];
  };
}

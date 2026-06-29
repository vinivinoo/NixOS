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
  };
}

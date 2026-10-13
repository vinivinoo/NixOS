{ self, inputs, ... }: {

  flake.homeModules.yazi = { config, pkgs, ... }: {
    # NOTE: needed for background transparency
    catppuccin.yazi.enable = false;
    home.file = {
      "/home/vini/.config/yazi/theme.toml".source = ./theme.toml;
      "/home/vini/.config/yazi/Catppuccin_Mocha-tmTheme".source = ./Catppuccin_Mocha.tmTheme;
    };    

    programs.yazi = {
      enable = true;
      shellWrapperName = "y";
      enableZshIntegration = true;
      settings = {
        manager = {
          sort_by = "natural";
        };
        opener = {
          browser = [
            {
              run = "${config.home.sessionVariables.BROWSER} \"%s\"";
              block = false;
              desc = "Open in Browser";
            }
          ];
          edit = [
            {
              run = "${config.home.sessionVariables.EDITOR} \"%s\"";
              block = true;
              desc = "Open in Editor";
            }
          ];
          picture = [
            {
              run = "oculante \"%s\"";
              block = false;
              desc = "Oculante";
            }
          ];
        };

        open = {
          rules = [
            {
              mime = "application/pdf";
              use = "browser";
            }
            {
              mime = "image/*";
              use = "picture";
            }
            {
              mime = "text/*";
              use = "edit";
            }
            {
              mime = "*";
              use = "edit";
            }
          ];
        };
      };
    };
  };
}

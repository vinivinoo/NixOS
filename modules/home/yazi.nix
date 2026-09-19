{config, ...}: {
  programs.yazi = {
    enable = true;
    shellWrapperName = "y";
    enableZshIntegration = true;
    settings = {
      opener = {
        browser = [
          {
            run = "${config.home.sessionVariables.BROWSER} \"$@\"";
            block = false;
            desc = "Open in Browser";
          }
        ];
        edit = [
          {
            run = "${config.home.sessionVariables.EDITOR} \"$@\"";
            block = true;
            desc = "Neovim";
          }
        ];
        picture = [
          {
            run = "oculante \"$@\"";
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
}

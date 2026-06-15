{
  programs.yazi = {
    enable = true;
    shellWrapperName = "y";
    enableZshIntegration = true;
    settings = {
      opener = {
        browser = [
          { run = "firefox \"$@\""; block = false; desc = "Open in Browser"; }
        ];
        edit = [
          { run = "nvim \"$@\""; block = true; desc = "Neovim"; }
        ];
      };

      open = {
        rules = [
          { mime = "application/pdf"; use = "browser"; }
          { mime = "text/*"; use = "edit"; }
          { mime = "*"; use = "edit"; }
        ];
      };
    };
  };
}

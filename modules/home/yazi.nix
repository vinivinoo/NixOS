{
  programs.yazi = {
    enable = true;
    shellWrapperName = "y";
    settings = {
      opener = {
        browser = [
          { run = "firefox \"$@\""; block = false; desc = "Open in Browser"; }
        ];
      };

      open = {
        rules = [
          { mime = "application/pdf"; use = "browser"; }
        ];
      };
    };
  };
}

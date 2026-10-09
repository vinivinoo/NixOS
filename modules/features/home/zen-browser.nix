{ self, inputs, ... }: {

  flake.homeModules.zenBrowser = { inputs, ... }: {
    imports = [ inputs.zen-browser.homeModules.beta ];
    programs.zen-browser = {
      enable = true;
      setAsDefaultBrowser = true;
    };
  };
}

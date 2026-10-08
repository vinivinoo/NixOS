{ inputs, ... }:
{
  imports = [ inputs.zen-browser.homeModules.beta ];
  programs.zen-browser = {
    enabled = true;
    setAdDefaultBrowser = true;
  };
}

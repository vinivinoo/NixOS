{ inputs, config, ... }:

{
  imports = [
    inputs.nvf.homeManagerModules.default
    ./globals.nix
    ./options.nix
    ./keybinds.nix
    (inputs.import-tree ./plugins)
  ];

  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;
        lineNumberMode = "relative";
      };
    };
  };
}

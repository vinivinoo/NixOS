{ inputs, config, ... }:

{
  imports = [
      inputs.nvf.homeManagerModules.default
      ./options.nix
      (import-tree ./plugins) 
    ];


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

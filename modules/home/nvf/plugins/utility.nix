{
  programs.nvf.settings.vim = {
    utility = {
      motion = {
        flash-nvim = {
          enable = true;
          mappings = {
            jump = "f";
            treesitter = "F";
            remote = "r";
            treesitter_search = "R";
            toggle = "<c-f>";
          };
        };
      };
      multicursors.enable = true;
      nix-develop.enable = true;
      yazi-nvim.enable = true;
    };
  };
}

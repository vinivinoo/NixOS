{ pkgs, lib, ... }:

{
  vim = {
    enable = true;
  

    statusline.lualine.enable = true;
    fzf-lua.enable = true;
    autocomplete.nvim-cmp.enable = true;

    languages = {
      enableLSP = true;
      enableTreesitter = true;

      nix.enable = true;
    };
  };
}

{
  programs.nvf.settings.vim = {
    utility = {
      grug-far-nvim = {
        enable = true;
      };
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
      # FIX: warten, bis ich es downloaden kann
      smart-splits.enable = true;
      yazi-nvim.enable = true;
    };
    keymaps = [
      {
        mode = [
          "n"
          "x"
        ];
        key = "<leader>sr";
        action = "<cmd>lua local grug = require('grug-far'); local ext = vim.bo.buftype == '' and vim.fn.expand('%:e'); grug.open({ transient = true, prefills = { filesFilter = (ext and ext ~= '') and ('*.' .. ext) or nil } })<cr>";
        desc = "Search and Replace";
      }
    ];
  };
}

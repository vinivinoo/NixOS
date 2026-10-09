{
  programs.nvf.settings.vim = {
    utility = {
      grug-far-nvim = {
        enable = true;
      };
      motion = {
        flash-nvim = {
          enable = true;
        };
      };
      nix-develop.enable = true;
      smart-splits.enable = true;
      yazi-nvim.enable = true;
      images = {
        image-nvim.enable = true;
        img-clip.enable = true;
      };
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
      {
        mode = "n";
        key = "<leader>-";
        action = "<cmd>Yazi<cr>";
        desc = "File Manager Yazi";
      }
      {
        mode = "n";
        key = "<leader>cw";
        action = "<cmd>Yazi cwd<cr>";
        desc = "File Manager in Working Directory";
      }
    ];
  };
}

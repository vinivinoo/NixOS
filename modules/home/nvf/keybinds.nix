{
  programs.nvf.settings.vim.keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "x";
      action = "\"_x";
      silent = true;
      desc = "Delete";
    }
    {
      mode = "x";
      key = "<leader>p";
      action = "\"_dP";
      silent = true;
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "\"_dP";
      silent = true;
      desc = "Switch Buffer";
    }
    {
      mode = "n";
      key = "<leader>bi";
      action = "<cmd>BufferDelete!<cr>";
      silent = true;
      desc = "Delete Invisible Buffers";
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>Bdelete<cr>";
      silent = true;
      desc = "Delete Buffers";
    }
    {
      mode = "n";
      key = "<leader>bx";
      action = "<cmd>%bd<cr>";
      silent = true;
      desc = "Close Buffers";
    }
  ];
}

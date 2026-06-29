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
  ];
}

{
  programs.nvf.settings.vim = {
    debugger = {
      nvim-dap.enable = true;
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>db";
        action = "<cmd>lua require('dap').toggle_breakpoint()<cr>";
        silent = true;
        desc = "Toggle Breakpoint";
      }
    ];
  };
}

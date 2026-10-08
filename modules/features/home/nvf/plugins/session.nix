{
  programs.nvf.settings.vim = {
    session = {
      nvim-session-manager = {
        enable = true;
        mappings = {
          deleteSession = "<leader>qd";
          loadLastSession = "<leader>ql";
          loadSession = "<leader>qs";
          saveCurrentSession = "<leader>qq";
        };
        setupOpts = {
          autoload_mode = "Disabled";
        };
      };
    };
    # keymaps = [
    #   {
    #
    #   }
    # ]
  };
}

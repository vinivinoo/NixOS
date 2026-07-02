{
  programs.nvf.settings.vim = {
    autocmds = {
      event = ["FileType"];
      pattern = ["markdown"];
      command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab";
    };
  };
}

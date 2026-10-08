{
  programs.nvf.settings.vim = {
    autocmds = [
      {
        enable = true;
        event = ["FileType"];
        pattern = ["*.md" "markdown"];
        command = "set shiftwidth=2 tabstop=2 softtabstop=2 expandtab";
        desc = "Markdown Einrückung auf 2 Spaces setzen";
      }
    ];
  };
}

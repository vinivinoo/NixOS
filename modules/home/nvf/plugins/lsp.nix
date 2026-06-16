{
  programs.nvf.settings.vim.lsp = {
    enable = true;
    formatOnSave = true;
    lspconfig.enable = true;
    null-ls.enable = true;
    trouble.enable = true;

    presets = {
      bash-language-server.enable = true;
      clangd.enable = true;
      nixd.enable = true;
    };
  };
}

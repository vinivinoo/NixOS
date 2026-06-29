{
  programs.nvf.settings.vim.lsp = {
    enable = true;
    formatOnSave = true;
    lspconfig.enable = true;
    null-ls.enable = true;
    trouble = {
      enable = true;
    };

    presets = {
      bash-language-server.enable = true;
      clangd.enable = true;
      nixd.enable = true;
    };

    mappings = {
      addWorkspaceFolder = "<leader>cwa";
      codeAction = "<leader>ca";
      documentHighlight = "<leader>ch";
      format = "<leader>cF";
      goToDeclaration = "gD";
      goToDefinition = "gd";
      goToType = "gt";
      listImplementations = "gi";
      listReferences = "gr";
      hover = "<leader>ch";
      listDocumentSymbols = "<leader>cs";
      listWorkspaceFolders = "<leader>cwl";
      listWorkspaceSymbols = "<leader>cws";

    };
  };
}

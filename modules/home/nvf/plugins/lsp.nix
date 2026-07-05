{
  programs.nvf.settings.vim = {
    lsp = {
      enable = true;
      formatOnSave = true;
      lspconfig.enable = true;
      null-ls.enable = true;
      trouble = {
        enable = true;
        mappings = {
          documentDiagnostics = "<leader>xd";
          locList = "<leader>xl";
          lspReferences = "<leader>cr";
          quickfix = "<leader>xq";
          symbols = "<leader>xs";
          workspaceDiagnostics = "<leader>xwd";
        };
      };

      presets = {
        bash-language-server.enable = true;
        clangd.enable = true;
        nixd.enable = true;
        markdown-oxide.enable = true;
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
        nextDiagnostic = "<leader>xgn";
        openDiagnosticFloat = "<leader>xe";
        previousDiagnostic = "<leader>xgp";
        removeWorkspaceFolder = "<leader>cwr";
        renameSymbol = "<leader>cn";
        signatureHelp = "<leader>cs";
        toggleFormatOnSave = "<leader>ctf";
      };
    };
  };
}

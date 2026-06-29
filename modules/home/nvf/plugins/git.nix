{
  programs.nvf.settings.vim = {
    git = {
      gitsigns = {
        enable = true;
        setupOpts = {
          signs = {
            add.text = "▎";
            change.text = "▎";
            delete.text = "";
            topdelete.text = "";
            changedelete.text = "▎";
            untracked.text = "▎";
          };
          signs_staged = {
            add.text = "▎";
            change.text = "▎";
            delete.text = "";
            topdelete.text = "";
            changedelete.text = "▎";
          };
        };
        mappings = {
          nextHunk = ">h";
          previousHunk = "<h";
          stageHunk = "<leader>ghs";
          undoStageHunk = "<leader>ghu";
          resetHunk = "<leader>ghr";
          stageBuffer = "<leader>ghS";
          resetBuffer = "<leader>ghR";
          previewHunk = "<leader>ghp";
          blameLine = "<leader>ghb";
          diffThis = "<leader>ghd";
          diffProject = "<leader>ghD";
          toggleBlame = "<leader>gtb";
          toggleDeleted = "<leader>gtd";
        };
      };
    };
  };
}

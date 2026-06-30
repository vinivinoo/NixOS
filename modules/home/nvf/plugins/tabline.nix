{
  programs.nvf.settings.vim = {
    tabline = {
      nvimBufferline = {
        enable = true;
        mappings = {
          cycleNext = "<Tab>"; # Next buffer
          cyclePrevious = "<S-Tab>"; # Previous buffer
          moveNext = "<leader>b]"; # Move buffer right
          movePrevious = "<leader>b["; # Move buffer left
          closeCurrent = "<leader>bx"; # Close current buffer
          pick = "<leader>bp"; # Pick buffer interactively
          sortByDirectory = "<leader>bsd"; # Sort by directory
          sortByExtension = "<leader>bse"; # Sort by extension
          sortById = "<leader>bsi"; # Sort by ID
        };

        # Setup options
        setupOpts = {
          options = {
            mode = "buffers";
            separator_style = "thin";
            always_show_bufferline = true;
            show_buffer_close_icons = true;
            color_icons = true;
            numbers = "ordinal";
            diagnostics = "nvim_lsp";
            indicator = {
              style = "icon";
              icon = "▎";
            };
          };
        };
      };
    };
  };
}

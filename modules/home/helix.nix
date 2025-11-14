{
  programs.helix = {
    enable = true;
    settings = {
    # theme = "catppuccin_mocha";
      editor = {
        line-number = "relative";
        color-modes = true;
        statusline = {
          left = [ "mode" "spinner" "file-name" "read-only-indicator" "file-modification-indicator" ];
          center = [];
          right = [ "diagnostics" "selections" "register" "position" "position-percentage" "file-encoding" ];
          mode.normal = "NORMAL";
          mode.insert = "INSERT";
          mode.select = "SELECT";
        };
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        indent-guides = {
          render = true;
        };
        soft-wrap = {
          enable = true;
        };
      };
    };
  };
}

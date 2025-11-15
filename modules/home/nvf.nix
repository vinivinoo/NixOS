{ pkgs, lib, ... }:

{
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        theme = { 
          enable = true;
          name = "catppuccin";
          style = "mocha";
        };

        # coding
        mini = {
          ai.enable = true;
          pairs.enable = true;
          surround.enable = true;
        };
        autocomplete.blink-cmp = {
          enable = true;
        };
        fzf-lua.enable = true;

        # editor
        utility.motion.flash-nvim.enable = true;
        # binds.whichKey.enable = true;
        git.gitsigns.enable = true;
        notes.todo-comments.enable = true;

        # formatting
        formatter.conform-nvim.enable = true;

        # linting
        diagnostics.nvim-lint.enable = true;

        # lsp
        languages = {
          enableLSP = true;
          enableTreesitter = true;

          nix.enable = true;
        };

        # UI
        statusline.lualine.enable = true;
        mini.icons.enable = true;
        utility.snacks-nvim.enable = true;

        keymaps = [
          # FZF-Lua: Dateien suchen
          {
            key = "<leader>ff";
            mode = "n";
            action = "require('fzf-lua').files()";
            lua = true;
            desc = "FZF-Lua: Dateien suchen";
          }
          # FZF-Lua: Live-Grep
          {
            key = "<leader>fg";
            mode = "n";
            action = "require('fzf-lua').live_grep()";
            lua = true;
            desc = "FZF-Lua: Inhalt durchsuchen";
          }
          # Weitere Beispiele:
          {
            key = "<leader>fb";
            mode = "n";
            action = "require('fzf-lua').buffers()";
            lua = true;
            desc = "FZF-Lua: Buffers";
          }
          {
            key = "<leader>fh";
            mode = "n";
            action = "require('fzf-lua').help_tags()";
            lua = true;
            desc = "FZF-Lua: Hilfe Tags";
          }
        ];
      };
    };
  };
}

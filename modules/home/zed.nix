{
  programs.zed-editor = {
    enable = true;
    extensions = [ "Catppuccin" "Catppuccin Icons" "Nix" ];
    userKeymaps = [
      {
        context = "(VimControll && !menu)";
        bindings = {
          space = null;
        };
      }
      {
        context = "(vim_mode == normal || vim_mode == select) && !menu";
        bindings = {
          "space f" = "file_finder::Toggle";
        };
      }
    ];
    userSettings = {
      base_keymap = "VSCode";
      always_treat_brackets_as_autoclosed = "true";
      relative_line_numbers = true;
      disable_ai = true;
      tab_size = 2;
      buffer_font_family = "FiraMono Nerd Font";
      vim_mode = true;
      icon_theme = "Zed (Default)";
      ui_font_size = 16;
      buffer_font_size = 15;
      theme = {
        mode = "dark";
        light = "Catppuccin Frappé";
        dark = "Catppuccin Mocha";
      };
    };
  };
}

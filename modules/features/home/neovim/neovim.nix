{ self, inputs, ... }: {

  flake.homeModules.neovim = { pkgs, ... }: {
    programs.neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
      viAlias = true;

      # NOTE: to silence Legacy Warning
      withRuby = false;
      withPython3 = false;
    };

    home.packages = with pkgs; [
      bat
      fd
      fzf
      ripgrep
      lazygit
      tree-sitter
      

      # lua
      lua-language-server
      stylua
      lua55Packages.luacheck

      # nix
      nixd
      nixfmt
    ];

    xdg.configFile."nvim/init.lua".source = ./nvim/init.lua;
    xdg.configFile."nvim/lua".source = ./nvim/lua;
  };
}

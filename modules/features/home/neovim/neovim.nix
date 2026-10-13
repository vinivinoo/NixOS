{ self, inputs, ... }: {

  flake.homeModules.neovim = { pkgs }: {
    programs.neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
      viAlias = true;
    };

    extraPackages = with pkgs; [
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
      nixld
      nixfmt
    ];

    xdg.configFile."nvim/init.lua".source = ./nvim/init.lua;
    xdg.configFile."nvim/lua".source = ./nvim/lua;
  };
}

{ self, inputs, ... }: {
  
  flake.homeModules.pl = { pkgs, ... }: {
    home.packages = with pkgs; [
      gcc
      temurin-bin-21 # Java21

      # lsp

      # lua for nvim
      lua-language-server
      stylua
      lua55Packages.luacheck

      nixd
      nixfmt
    ];
  };
}

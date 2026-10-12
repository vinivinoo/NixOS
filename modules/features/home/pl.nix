{ self, inputs, ... }: {
  
  flake.homeModules.pl = { pkgs, ... } {
    home.packages = with pkgs; [
      gcc
      temurin-bin-21 # Java21

      # lsp
      lua-language-server
      nixd
    ];
  };
}

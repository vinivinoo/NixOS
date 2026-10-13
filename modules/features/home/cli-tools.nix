{ self, inputs, ... }: {

  flake.homeModules.cliTools = { pkgs, ... }: {
    home.packages = with pkgs; [
      eza
      fd
      fzf
      ripgrep
      tree
      zip
      zoxide
    ];
  };
}

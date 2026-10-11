{ self, inputs, ... }: {

  flake.homeModules.cliTools = { pkgs, ... }: {
    home.packages = with pkgs; [
      bat
      btop
      eza
      fastfetch
      fd
      fzf
      lazygit
      ripgrep
      starship
      tmux
      tree
      yazi
      zip
      zoxide
      zsh
    ];
  };
}

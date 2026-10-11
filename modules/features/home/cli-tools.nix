{ self, inputs, ... }: {

  flake.homeModules.cliTools = { pkgs, ... }: {
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
  };
};

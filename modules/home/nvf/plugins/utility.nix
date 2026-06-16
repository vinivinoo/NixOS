{
  programs.nvf.settings.vim = {
    utility = {
      motion.flash-nvim.enable = true;
      multicursors.enable = true;
      nix-develop.enable = true;
      snacks-nvim = {
        enable = true;
        setupOpts = {
          indent.enable = true;
          input.enable = true;
          notifier.enable = true;
          scope.enable = true;
          statuscolumn.enable = true;
          words.enable = true;
        };
      };
      yazi-nvim.enable = true;
    };
  };
}

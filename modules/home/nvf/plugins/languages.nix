{
  programs.nvf.settings.vim = {
    languages = {
      enableFormat = true;
      enableTreesitter = true;

      bash.enable = true;
      clang.enable = true;
      cmake.enable = true;
      glsl.enable = true;
      java.enable = true;
      nix.enable = true;

      markdown = {
        enable = true;
        lsp.servers = ["markdown-oxide"];
      };
    };
  };
}

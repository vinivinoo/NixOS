{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      character = {
        success_symbol = "[❯](green)";
        error_symbol = "[❯](red)";
        vimcmd_symbol = "[❮](subtext1)";
      };

      git_branch = {
        style = "bold mauve";
      };

      directory = {
        truncation_length = 4;
        style = "bold lavender";
      };
    };
  };
}

{ pkgs, ... }:

{
  programs.bat = {
    enable = true;
    # themes = {
    #   CatppuccinMocha = {
    #     src = pkgs.fetchFromGitHub {
    #       owner = "catppuccin";
    #       repo = "bat";
    #       rev = "main";
    #       sha256 = "sha256-lJapSgRVENTrbmpVyn+UQabC9fpV1G1e+CdlJ090uvg=";
    #     };
    #     file = "Catppuccin-Mocha.tmTheme";
    #   };
    # };
    # config.theme = "Catppuccin-Mocha";
  };
}

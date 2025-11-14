{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # devTools
    git
    helix
    neovim
    obsidian
    vim
    vscode
    yazi
    zed-editor

    # terminal
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
    zoxide
    zsh

    # desktop
    hyprland
    hyprshot
    kitty
    nwg-look
    rofi
    swayidle
    swaylock-effects
    swaynotificationcenter
    swww
    waybar
    xdg-desktop-portal-hyprland

    # media
    vesktop
    spotify
    firefox

    # fonts
    nerd-fonts.fira-mono
    nerd-fonts.fira-code
    dejavu_fonts
    noto-fonts-color-emoji

    # programming
    curl
    jdk
    python3
    gcc
    graphviz
  ];
}

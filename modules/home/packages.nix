{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # devTools
    git
    helix
    jetbrains.idea-oss
    # neovim
    obsidian
    # vim
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
    grim
    hyprland
    kitty
    libnotify
    nwg-look
    rofi
    slurp
    swayidle
    swaylock-effects
    swaynotificationcenter
    swww
    waybar
    xdg-desktop-portal-hyprland

    # media
    discord
    firefox
    spotify

    # fonts
    fira-sans
    nerd-fonts.fira-code
    dejavu_fonts
    noto-fonts-color-emoji
    nerd-fonts.jetbrains-mono
    inter
    nerd-fonts.symbols-only

    # cursor
    bibata-cursors

    # programming
    clang-tools
    curl
    jdk
    python3
    gcc
    gnumake
    gradle
    graphviz
    tree-sitter
  ];
}

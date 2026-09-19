{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    # devTools
    git
    helix
    jetbrains.idea
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
    zip
    zoxide
    zsh

    # desktop
    papirus-icon-theme
    grim
    hyprland
    kitty
    libnotify
    libdisplay-info
    nwg-look
    slurp
    swayidle
    swaylock-effects
    swaynotificationcenter
    awww
    waybar
    xdg-desktop-portal-hyprland

    # media
    anki-bin
    spotify
    signal-desktop
    vesktop
    brave

    # gaming
    steam
    prismlauncher

    # work
    blender
    libreoffice
    hunspell
    hunspellDicts.de_DE
    hunspellDicts.en_US
    hunspellDicts.sv_SE
    rclone
    oculante
    nautilus
    thunderbird
    inputs.zennotes.packages.${pkgs.system}.default

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
    lua
    luarocks
    nixfmt
    sdl3
    shaderc
    tree-sitter
    typst
  ];
}

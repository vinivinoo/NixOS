{pkgs, ...}: {
  home.packages = with pkgs; [
    # devTools
    git
    helix
    jetbrains.idea-oss
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
    firefox
    spotify
    signal-desktop
    thunderbird
    vesktop

    # gaming
    steam
    prismlauncher

    # work
    libreoffice-fresh
    hunspell
    hunspellDicts.de_DE
    hunspellDicts.en_US
    hunspellDicts.sv_SE
    rclone
    oculante
    nautilus

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
  ];
}

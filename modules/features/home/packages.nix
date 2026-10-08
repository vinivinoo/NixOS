{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = with pkgs; [
    # devTools
    git
    helix
    neovim
    obsidian
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
    oculante

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
    geteduroam
    libreoffice
    rclone
    openconnect
    nautilus
    thunderbird
    inputs.zennotes.packages.${pkgs.system}.default

    # fonts
    fira-sans
    nerd-fonts.fira-code
    dejavu_fonts
    noto-fonts-color-emoji
    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only

    # cursor
    bibata-cursors
  ];
}

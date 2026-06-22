{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    shell = "${pkgs.zsh}/bin/zsh";

    # Terminal & Farben
    terminal = "screen-256color";
    historyLimit = 10000;
    keyMode = "vi"; # Entspricht: set-window-option -g mode-keys vi
    mouse = true; # Entspricht: set -g mouse on
    clock24 = true;

    # Indizes bei 1 starten & Fenster automatisch neu nummerieren
    baseIndex = 1;
    extraConfig = ''
      set-option -g renumber-windows on
      set -g status-position top

      # True-Color (24-bit) Support aktivieren
      set-option -sa terminal-overrides ",xterm*:Tc"

      # --- Keybindings ---

      # Panels horizontal und vertikal splitten im aktuellen Pfad
      # Nutzt sowohl | und - als auch die Standard-Tasten % und "
      bind | split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
      bind '"' split-window -v -c "#{pane_current_path}"
      bind % split-window -h -c "#{pane_current_path}"

      # Mit Alt + Vi-Keys ohne Prefix zwischen Panels wechseln (M = Alt)
      bind -n M-h select-pane -L
      bind -n M-j select-pane -D
      bind -n M-k select-pane -U
      bind -n M-l select-pane -R

      # Mit Alt + Pfeiltasten ohne Prefix zwischen Panels wechseln
      bind -n M-Left select-pane -L
      bind -n M-Right select-pane -R
      bind -n M-Up select-pane -U
      bind -n M-Down select-pane -D

      # Mit Shift + Pfeiltasten zwischen Fenstern wechseln
      bind -n S-Left  previous-window
      bind -n S-Right next-window

      # Mit Shift + Alt + H/L zwischen Fenstern wechseln (Vim-Style)
      bind -n M-H previous-window
      bind -n M-L next-window

      # --- Vi Copy-Mode Keybindings ---
      # (Aktivieren mit Prefix + [ )
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
    '';

    # Setzt den Prefix auf Ctrl + Space (Home Manager kümmert sich um das unbind von C-b)
    shortcut = "space";

    # --- Plugins ---
    # Home Manager lädt diese automatisch. Kein TPM-Script-Aufruf am Ende nötig!
    plugins = with pkgs.tmuxPlugins; [
      sensible
      vim-tmux-navigator
      yank

      {
        plugin = catppuccin;
        extraConfig = ''
          set -g @catppuccin_flavour 'mocha'

          set -g @catppuccin_window_status_style "rounded"

          # Make the status line pretty and add some modules
          set -g status-right-length 100
          set -g status-left-length 100
          set -g status-left ""
          set -g status-right "#{E:@catppuccin_status_application}"
          set -ag status-right "#{E:@catppuccin_status_session}"
        '';
      }
    ];
  };
}

{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";

    extraConfig = ''
      set -g default-terminal "tmux-256color"
      set -ag terminal-overrides ",xterm-256color:RGB"

      set -g prefix C-s
      set -g mouse on

      bind C-l send-keys 'clear' C-m
      set-window-option -g mode-keys vi

      bind-key h select-pane -L
      bind-key j select-pane -D
      bind-key k select-pane -U
      bind-key l select-pane -R

      set-option -g status-position top

      # Make statusline pretty
      set -g status-right-length 100
      set -g status-left-length 100
      set -g status-left ""
      set -g status-right "#{E:@catppuccin_status_application}"
      set -ag status-right "#{E:@catppuccin_status_session}"
      set -ag status-right "#{E:@catppuccin_status_uptime}"

      set -g status-style bg=default
    '';

    plugins = with pkgs.tmuxPlugins; [
      tpm
      vim-tmux-navigator
    ];
  };

  home.sessionVariables.TMUX_PLUGIN_MANAGER_PATH = "home/vini/.config/tmux/plugins";
}

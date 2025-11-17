{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "/home/vini/nixos";
      in {
        rb = "sudo nixos-rebuild switch --flake ${flakeDir}#vini";
        rbf = "sudo nixos-rebuild switch --flake ${flakeDir}#vini --no-reexec";
        upd = "nix flake update ${flakeDir}";
        upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

        conf = "hx ${flakeDir}";

        c = "clear";
        cat = "bat";
        ls = "eza";
        la = "eza -lA";
        
      };

    history.size = 5000;
    history.path = "/home/vini/.zsh_history";

    initContent = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
         exec mango
      fi

      man() {
        command man "$@" | bat -l man -p
      }
                
      eval "$(starship init zsh)"
      eval "$(zoxide init zsh --cmd cd)"
      eval "$(fzf --zsh)"
    '';
  };
}

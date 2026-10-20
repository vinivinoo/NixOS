{ self, inputs, ... }: {
  flake.homeModules.mimeApps = { config, ... }: {
    xdg.mimeApps = {
      enable = true;
      defaultApplications = {
        "application/pdf" = "${config.home.sessionVariables.BROWSER}.desktop";
        "image/png" = "oculante.desktop";
        "image/jpeg" = "oculante.desktop";
        "image/webp" = "oculante.desktop";
        "image/gif" = "oculante.desktop";
        "x-schema-handler/mailto" = "${config.home.sessionVariables.EMAIL}.desktop";
      };
    };
  };
}

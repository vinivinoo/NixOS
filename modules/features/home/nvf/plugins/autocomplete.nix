{ self, inputs, ... }: {

  flake.homeModules.nvfAutocomplete = {
    programs.nvf.settings.vim = {
      autocomplete = {
        blink-cmp.enable = true;
      };
    };
  };
}

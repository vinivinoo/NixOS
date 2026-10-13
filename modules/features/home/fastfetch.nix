{ self, inputs, ... }: {
  flake.homeManager.fastfetch = {
    programs.fastfetch = {
      enable = true;
    };
  };
}

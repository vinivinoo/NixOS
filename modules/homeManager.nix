{ self, inputs, ... }: {

  flake.nixosModules.homeManager = { inputs, ... }: {
    imports = [
      inputs.home-manager.flakeModules.home-manager
    ];

    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      extraSpecialArgs = { inherit inputs; };
      backupFileExtension = "backup";
      users.vini = self.homeConfiguration.vini;
    };
  };
}

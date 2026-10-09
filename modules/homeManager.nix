{ self, inputs, ... }: {

  imports = [ inputs.home-manager.flakeModules.home-manager ];

  flake.nixosModules.homeManager = { inputs, ... }: {
    imports = [
      inputs.home-manager.nixosModules.home-manager
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

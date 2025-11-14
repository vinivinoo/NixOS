{
  description = "Mein Nixos Setup";
	
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin.url = "github:catppuccin/nix";
    stylix.url = "github:danth/stylix";
  };

  outputs = { nixpkgs, home-manager, catppuccin, ... }@inputs: {
    nixosConfigurations.vini = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./hosts/laptop/configuration.nix
        home-manager.nixosModules.home-manager
        inputs.stylix.nixosModules.stylix
        catppuccin.nixosModules.catppuccin
	      {
	        home-manager = {
	          useGlobalPkgs = true;
	          useUserPackages = true;
	          users.vini = import ./hosts/laptop/home.nix;
	          backupFileExtension = "backup";
	        };
        }
      ];
    };
  };
}

{
  description = "Mein Nixos Setup";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin = {
      url = "github:catppuccin/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    mango = {
      url = "github:DreamMaoMao/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:YaLTeR/niri";
      inputs.nixpkgs.follow = "nixpkgs";
    };
    nix-ld = {
      url = "github:Mic92/nix-ld";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, catppuccin, nix-ld, mango, ... }@inputs: {
    nixosConfigurations.vini = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./hosts/laptop/configuration.nix
        home-manager.nixosModules.home-manager
        inputs.catppuccin.nixosModules.catppuccin
        inputs.mango.nixosModules.mango
        inputs.nix-ld.nixosModules.nix-ld
        inputs.niri.nixosModules.niri

	      {
	        home-manager = {
	          useGlobalPkgs = true;
	          useUserPackages = true;
	          users.vini = ./hosts/laptop/home.nix;
	          extraSpecialArgs = { inherit inputs; };
	          backupFileExtension = "backup";
	        };
        }
      ];
    };
  };
}

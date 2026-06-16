{
  description = "Mein Nixos Setup";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:denful/import-tree";
    wrapper-modules = {
      url = "github:BirdeeHub/nix-wrapper-modules";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin = {
      url = "github:catppuccin/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia = {
      url = "github:noctalia-dev/noctalia/legacy-v4";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    {
      nixpkgs,
      home-manager,
      flake-parts,
      import-tree,
      catppuccin,
      niri,
      noctalia,
      nvf,
      ...
    }@inputs:
    {
      nixosConfigurations.vini = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/laptop/configuration.nix
          home-manager.nixosModules.home-manager
          catppuccin.nixosModules.catppuccin

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

{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    xremap-flake.url = "github:xremap/nix-flake";
    ags.url = "github:Aylur/ags";
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fine-cmdline = {
      url = "github:VonHeikemen/fine-cmdline.nvim";
      flake = false;
    };
  };
  outputs = { self, nixpkgs, home-manager, ... }@inputs:

    let
      system = "x86_64-linux";

      # User Variables
      hostname = "BathyScarf";
      username = "sumelan";
    in
    {
      nixosConfigurations = {
        "${hostname}" = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit system;
            inherit username;
            inherit hostname;
            inherit inputs;
          };
          modules = [
            ./nixos/configuration.nix
            home-manager.nixosModules.home-manager
              {
              home-manager.extraSpecialArgs = {
                inherit username;
                inherit hostname;
                inherit inputs;
              };
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.backupFileExtension = "backup";
              home-manager.users.${username} = {
                imports = [
                  ./home-manager/home.nix
                ];
              };
            }
          ];
        };
      };
    };
}

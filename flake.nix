{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix/release-24.11";
    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";
    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };
    hyprmag.url = "github:SIMULATAN/hyprmag";
    nix-flatpak.url = "github:gmodena/nix-flatpak";
    yazi-plugins = {
      url = "github:yazi-rs/plugins";
      flake = false;
    };
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fine-cmdline = {
      url = "github:VonHeikemen/fine-cmdline.nvim";
      flake = false;
    };
  };
  outputs = { self, nixpkgs, ... }@inputs:

    let
      system = "x86_64-linux";
      username = "sumelan";
    in
    {
      nixosConfigurations = {
        Rei = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/Rei ];
          specialArgs = {
            host = "Rei";
            inherit self inputs username;
          };
        };
        Rin = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/Rin ];
          specialArgs = {
            host = "Rin";
            inherit self inputs username;
          };
        };
      };
    };
}

{
  description = "My flake: BathyScarf";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";

    nix-flatpak.url = "github:gmodena/nix-flatpak";

    agenix.url = "github:yaxitech/ragenix";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    pre-commit-hooks.url = "github:cachix/git-hooks.nix";

    hyprland.url = "github:hyprwm/hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    pyprland.url = "github:hyprland-community/pyprland";

    fine-cmdline = {
      url = "github:VonHeikemen/fine-cmdline.nvim";
      flake = false;
    };

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    yazi-plugins = {
      url = "github:yazi-rs/plugins";
      flake = false;
    };
  };
  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    username = "sumelan";
  in {
    nixosConfigurations = {
      Rei = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [./hosts/Rei];
        specialArgs = {
          host = "Rei";
          inherit self inputs username;
        };
      };
      Rin = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [./hosts/Rin];
        specialArgs = {
          host = "Rin";
          inherit self inputs username;
        };
      };
    };
  };
}

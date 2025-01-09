{...}: {
  imports = [
    ./core
    ./hardware
    ./home-manager
    ./nix
    ./rustdesk
    ./services
    ./virtualization/podman.nix
    ./network/network.nix
    ./programs/program.nix
    ./security/security.nix
    ./style/stylix.nix
  ];
}

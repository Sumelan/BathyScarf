{
  inputs,
  nixpkgs,
  self,
  username,
  host,
  ...
}:
{
  imports = [
    ./core
    ./hardware
    ./home-manager
    ./nix
    ./rustdesk
    ./services
    ./virtualization
    ./network/network.nix
    ./programs/program.nix
    ./security/security.nix
    ./style/stylix.nix
  ];
}

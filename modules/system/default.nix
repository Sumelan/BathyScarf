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
    ./virtualization
    ./hardware/hardware.nix
    ./programs/program.nix
    ./style/stylix.nix
  ];
}

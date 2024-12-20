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
    ./wayland
    ./hardware/hardware.nix
    ./programs/program.nix
    ./style/stylix.nix
  ];
}

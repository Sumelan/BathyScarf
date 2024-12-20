{ pkgs, ... }:
{
  imports = [
    ./wm.nix
    ./xserver.nix
  ];
}

{ pkgs, ... }:
{
  imports = [
    ./bluetooth.nix
    ./graphics.nix
  ];
}

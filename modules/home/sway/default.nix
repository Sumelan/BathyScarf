{ pkgs, ... }:
{
  imports = [
    ./swaync.nix
    ./swayosd.nix
  ];
}

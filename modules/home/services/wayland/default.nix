{ pkgs, ... }:
{
  imports = [
    ./fnott
    ./cliphist.nix
    ./hypridle.nix
    ./swayosd.nix
  ];
}

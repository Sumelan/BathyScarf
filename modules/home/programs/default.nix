{ pkgs, ... }:
{
  imports = [
    ./media
    ./mozilla
    ./wayland
    ./vesktop.nix
  ];
}

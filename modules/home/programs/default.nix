{ pkgs, ... }:
{
  imports = [
    ./media
    ./wayland
    ./textfox.nix
    ./vesktop.nix
  ];
}

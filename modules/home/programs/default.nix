{ pkgs, inputs, ... }:
{
  imports = [
    ./browser/zen.nix
    ./media
    ./mozilla/thunderbird.nix
    ./wayland
    ./vesktop.nix
  ];
}

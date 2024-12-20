{ pkgs, ... }:
{
  imports = [
    ./audacious.nix
    ./rofi.nix
    ./spicetify.nix
    ./textfox.nix
    ./waypaper.nix
  ];
}

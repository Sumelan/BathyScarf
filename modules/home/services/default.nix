{ pkgs, ... }:
{
  imports = [
    ./media/playerctl.nix
    ./system
    ./wayland
  ];
}

{ pkgs, ... }:
{
  imports = [
    ./media
    ./system
    ./wayland
  ];
}

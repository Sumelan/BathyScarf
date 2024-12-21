{ inputs, ... }:
{
  imports = [
    inputs.hyprland.homeManagerModules.default

    ./fuzzel
    ./hyprland
    ./waybar
    ./hyprlock.nix
    ./waypaper.nix
  ];
}

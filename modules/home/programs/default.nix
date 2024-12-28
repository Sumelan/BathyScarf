{ pkgs, ... }:
{
  imports = [
    ./media
    ./wayland
    ./textfox.nix
    ./vesktop.nix
  ];
  home.packages = with pkgs; [
    thunderbird
  ];
}

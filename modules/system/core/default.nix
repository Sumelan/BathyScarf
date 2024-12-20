{ pkgs, ... }:
{
  imports = [
    ./baseSetting.nix
    ./bootloader.nix
    ./btrfs.nix
    ./security.nix
    ./services.nix
    ./wayland.nix
    ./xserver.nix
    ./zram.nix
  ];
}

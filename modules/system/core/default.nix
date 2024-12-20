{ pkgs, ... }:
{
  imports = [
    ./baseSetting.nix
    ./bootloader.nix
    ./btrfs.nix
    ./nh.nix
    ./security.nix
    ./services.nix
    ./user.nix
    ./wayland.nix
    ./xserver.nix
    ./zram.nix
  ];
}

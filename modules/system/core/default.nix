{ pkgs, ... }:
{
  imports = [
    ./bootloader.nix
    ./btrfs.nix
    ./nh.nix
    ./nixos.nix
    ./security.nix
    ./services.nix
    ./user.nix
    ./zram.nix
  ];
}

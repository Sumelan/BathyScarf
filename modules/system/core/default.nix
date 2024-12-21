{ pkgs, ... }:
{
  imports = [
    ./bootloader.nix
    ./btrfs.nix
    ./user.nix
    ./zram.nix
  ];
}

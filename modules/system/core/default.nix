{...}: {
  imports = [
    ./bootloader.nix
    ./btrfs.nix
    ./user.nix
    ./zramswap.nix
  ];
}

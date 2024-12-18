{
  inputs,
  nixpkgs,
  self,
  username,
  host,
  ...
}:
{
  imports = [
    ./agenix.nix
    ./bluetooth.nix
    ./bootloader.nix
    ./btrfs.nix
    ./flatpak.nix
    ./hardware.nix
    ./network.nix
    ./nh.nix
    ./pipewire.nix
    ./program.nix
    ./security.nix
    ./services.nix
    ./stylix.nix
    ./system.nix
    ./user.nix
    ./virtualization.nix
    ./wayland.nix
    ./xserver.nix
    ./zram.nix
  ];
}

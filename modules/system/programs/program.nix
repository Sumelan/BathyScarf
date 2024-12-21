{ pkgs, lib, ... }:
{
  imports = [
    ./hyprland.nix
    ./flatpak.nix
    ./uwsm.nix
    ./wireshark.nix
    ./xdg.nix
  ];

  programs = {
    dconf.enable = true;
    fish.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    # pinentryFlavor = "";
    };
    seahorse.enable = true;
    kdeconnect.enable = true;
  };
}

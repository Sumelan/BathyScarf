{ pkgs, ... }:
{
  imports = [
    ./bluetooth.nix
    ./network.nix
    ./pipewire.nix
  ];

  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [

      ];
    };
  };
  hardware.enableRedistributableFirmware = true;
}

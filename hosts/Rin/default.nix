{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./amd.nix
    ./../../modules/core
  ];

  powerManagement.cpuFreqGovernor = "performance";
}

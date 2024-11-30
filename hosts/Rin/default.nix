{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./amd.nix
    ./../../modules/core/default.Rin.nix
  ];
  
  # Extra Module Options
  drivers.amdgpu.enable = true;

  powerManagement.cpuFreqGovernor = "performance";
}

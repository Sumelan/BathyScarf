{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./amd.nix
    ./../../modules/system/default.Rin.nix
  ];
  
  # Extra Module Options
  drivers.amdgpu.enable = true;

  powerManagement.cpuFreqGovernor = "performance";
}

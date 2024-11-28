{ pkgs, ... }:
{
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 100;
    priority = 100;
   swapDevices = 1;
  };
}

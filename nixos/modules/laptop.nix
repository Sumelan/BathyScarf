{ pkgs, ... }:
{
  # Power management.
  powerManagement = {
    enable = true;
  };
  services = {
    thermald.enable = true;
    tlp.enable = true;
    logind.extraConfig = ''
      # don’t shutdown when power button is short-pressed
      HandlePowerKey=ignore
  	'';
  };
}

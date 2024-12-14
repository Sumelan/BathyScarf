{ pkgs, ... }:
{
  # Keychron K11 Max
  environment.systemPackages = with pkgs; [
    via
  ];
  services.udev = {
    packages = with pkgs; [
      via
    ];
    extraRules = ''
    SUBSYSTEM=="usb", ATTR{idVendor}=="3434", ATTR{idProduct}=="0AB9", GROUP="plugdev", TAG+="uaccess"
    '';
  };
}


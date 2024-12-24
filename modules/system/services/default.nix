{ ... }:
{
  imports = [
    ./gnome-services.nix
    ./greetd.nix
    ./pipewire.nix
    ./printing.nix
  ];

  services = {
    smartd = {
      enable = false;
      autodetect = true;
    };
    dbus.implementation = "broker";
    fstrim.enable = true;
    zerotierone.enable = true;
  };
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';
}

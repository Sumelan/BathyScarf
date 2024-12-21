{ lib, ... }:
{
  services.udiskie = {
    enable = true;
    tray = "auto";
    notify = true;
    automount = true;
    settings = {
      device_config = [
        { automount = false; }
      ];
    };
  };

  systemd.user.services.udiskie.Unit.After = lib.mkForce "graphical-session.target";
}

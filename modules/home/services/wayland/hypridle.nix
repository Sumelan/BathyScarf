{ pkgs, lib, inputs, host, ... }:
{
  services.hypridle = {
    enable = true;
    package = inputs.hypridle.packages.${pkgs.system}.hypridle;
    settings = {
      general = let
        beforeSleep = l: lib.concatStringsSep "; " l;
      in {
        ignore_dbus_inhibit = false;
        lock_cmd = "uwsm app -- hyprlock";
        unlock_cmd = "pkill -SIGUSR1 hyprlock";
        before_sleep_cmd = beforeSleep [
          "loginctl lock-session"
          "playerctl pause"
        ];
        after_sleep_cmd = "hyprctl dispath dpms on"; # to avoid having to press a key twice to run on the display.
      };
      listener = [
        {
          timeout = 30;
          on-timeout = "brightnessctl -sd asus::kbd_backlight set 0";
          on-resume = "brightnessctl -rd asus::kbd_backlight";
        }
        {
          timeout = 180;                             # 3 min.
          on-timeout = "brightnessctl -s set 10";    # set monitor backlight to minomum, avoid 0 on OLED monitor.
          on-resume = "brightnessctl -r";            # monitor backlight restor.
        }
        {
          timeout = 480;                             # 8 min.
          on-timeout = "loginctl lock-session";      # lock screen when timeout has passed.
        }
        {
          timeout = 600;                             # 10 min.
          on-timeout = "hyprctl dispatch dpms off";  # screen off when timeout has passed.
          on-resume = "hyprctl dispatch dpms on";    # screen on when activity is detected after timeout has fired.
        }
        (if (host == "Rei") then 
          {
            timeout = 720;                           # 12 min.
            on-timeout = "systemctl suspend";        # suspend pc.
          }
         else {})
      ];
    };
  };
  systemd.user.services.hypridle.Unit.After = lib.mkForce "graphical-session.target";
}

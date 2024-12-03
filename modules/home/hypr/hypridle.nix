{ pkgs, ... }:
{
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        lock_cmd = "pidof hyprlock || hyprlock";       # avoid starting multiple hyprlock instances.
        ignore_dbus_inhibit = false;
        before_sleep_cmd = "hyprlock";    # lock before suspend.
        after_sleep_cmd = "hyprctl dispath dpms on";   # to avoid having to press a key twice to run on the display.
      };

      listener = [
        {
          timeout = 180;                             # 3 min.
          on-timeout = "brightnessctl -s set 10";    # set monitor backlight to minomum, avoid 0 on OLED monitor.
          on-resume = "brightnessctl -r";            # monitor backlight restor.
        }
  # turn off keyboard backlight, uncomment this section if have keyboard backlight.
      # {
      #   timeout = 150;                                            # 2.5 min
      #   on-timeout = "brightnessctl -sd rgb:kbd_backlight set 0"; # turn off keyboard backlight.
      #   on-resume = "brightnessctl -rd rgb:kbd_backlight";        # turn on keyboard backlight.
      # }
        {
          timeout = 480;                         # 8 min.
          on-timeout = "hyprlock";  # lock screen when timeout has passed.
        }
        {
           timeout = 600;                             #10 min.
           on-timeout = "hyprctl dispatch dpms off";  #screen off when timeout has passed.
           on-resume = "hyprctl dispatch dpms on";    #screen on when activity is detected after timeout has fired.
        }
      # {
      #   timeout = 18000;                   # 5 h.
      #   on-timeout = "systemctl suspend";  # suspend pc.
      # }
      ];
    };
  };
}

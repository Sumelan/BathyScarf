{ host, ... }:
{
  services.swayosd = {
    enable = true;
    display = (if (host == "Rin") then "HDMI-A-1" else "eDP-1");
    topMargin = 1.0;
  };
}

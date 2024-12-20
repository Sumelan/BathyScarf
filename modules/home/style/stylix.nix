{ pkgs, inputs, ... }:
{
  stylix.targets = {
    hyprland.enable = false;
    rofi.enable = false;
    spicetify.enable = false;
    swaync.enable = false;
    waybar.enable = false;
  };
}

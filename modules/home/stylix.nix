{ pkgs, inputs, ... }:
{
  stylix.targets = {
    waybar.enable = false;
    rofi.enable = false;
    hyprland.enable = false;
    swaync.enable = false;
    spicetify.enable = false;
  };
}

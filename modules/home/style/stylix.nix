{ pkgs, inputs, ... }:
{
  stylix.targets = {
    fish.enable = false;
    kitty.variant256Colors = true;
    hyprland.enable = false;
    hyprlock.enable = false;
    rofi.enable = false;
    spicetify.enable = false;
    swaync.enable = false;
    waybar.enable = false;
  };
}

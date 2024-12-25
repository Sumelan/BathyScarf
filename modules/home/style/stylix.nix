{ pkgs, inputs, ... }:
{
  stylix.targets = {
    fish.enable = false;
    kitty.variant256Colors = true;
    rofi.enable = false;
    spicetify.enable = false;
    swaync.enable = false;
    waybar.enable = false;
  };
}

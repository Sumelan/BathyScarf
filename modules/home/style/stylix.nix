{ pkgs, inputs, ... }:
{
  stylix.targets = {
    kitty.variant256Colors = true;
    rofi.enable = false;
    spicetify.enable = false;
    swaync.enable = false;
    waybar.enable = false;
  };
}

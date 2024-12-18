{ pkgs, inputs, username, ... }:
{
  imports = [ inputs.stylix.nixosModules.stylix ];
  stylix = {
    enable = true;
    image = ../../wallpapers/wallpaper.png;
    base16Scheme = {
    # rose-pine-moon.yaml
      base00 = "232136";  # Base
      base01 = "2a273f";  # Surface
      base02 = "393552";  # Overlay
      base03 = "6e6a86";  # Muted
      base04 = "908caa";  # Subtle
      base05 = "e0def4";  # Text
      base06 = "e0def4";
      base07 = "56526e";  # Highlight High
      base08 = "eb6f92";  # Love
      base09 = "f6c177";
      base0A = "ea9a97";  # Rose
      base0B = "3e8fb0";  # Pine
      base0C = "9ccfd8";  # Foam
      base0D = "c4a7e7";  # Iris
      base0E = "f6c177";  # Gold
      base0F = "56526e";
    };
    polarity = "dark";
    opacity.terminal = 0.9;
    cursor.package = pkgs.bibata-cursors;
    cursor.name = "Bibata-Modern-Ice";
    cursor.size = 24;
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      serif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 12;
        terminal = 15;
        desktop = 11;
        popups = 12;
      };
    };
  };
}

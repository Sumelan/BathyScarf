{ pkgs, inputs, host, ... }:
let
  colorTheme = "gruvbox-material-dark-medium";
in
{
  imports = [ inputs.stylix.nixosModules.stylix ];

  stylix = {
    enable = true;
    image = ../../../wallpapers/wallpaper.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/${colorTheme}.yaml";
    polarity = "dark";

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };

    opacity = {
      applications = 0.95;
      terminal = 0.95;
      desktop = 0.95;
      popups = 0.75;
    };

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.nerd-fonts.ubuntu;
        name = "Ubuntu Nerd Font";
      };
      serif = {
        package = pkgs.nerd-fonts.ubuntu;
        name = "Ubuntu Nerd Font";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 12;
        terminal = 13;
        desktop = 12;
        popups = (if (host == "Rin") then 12 else 8);
      };
    };

    targets.fish.enable = false;
  };
}

{ pkgs, config, gtkThemeFromScheme, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    font-awesome
    twemoji-color-font
    noto-fonts-emoji
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    material-icons
  ];
  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme.override { color = "black"; };
    };
  };
}

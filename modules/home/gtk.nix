{ pkgs, config, gtkThemeFromScheme, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    font-awesome
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

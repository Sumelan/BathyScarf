{ pkgs, config, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    (nerdfonts.override {
      fonts = [
        "JetBrainsMono"
        "FiraCode"
        "CascadiaCode"
        "NerdFontsSymbolsOnly"
      ];
    })
    twemoji-color-font
    noto-fonts-emoji
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    fantasque-sans-mono
  ];

  gtk = {
    enable = true;
    font = {
      name = "JetBrainsMono";
      size = 12;
    };
    theme = {
      name = "Gruvbox-Green-Dark";
      package = pkgs.gruvbox-gtk-theme.override {
        colorVariants = [ "dark" ];
        themeVariants = [ "green" ];
        tweakVariants = [ "macos" ];
      };
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme.override { color = "black"; };
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 24;
  };
}

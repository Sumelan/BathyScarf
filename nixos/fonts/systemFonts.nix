{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      source-code-pro
      noto-fonts-cjk-sans
      twitter-color-emoji
      font-awesome
      powerline-fonts
      (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    ];
    fontconfig = {
      hinting.autohint = true;
      defaultFonts = {
         serif = [ "Noto Serif CJK JP" "Noto Color Emoji"  ];
         sansSerif = ["Noto Sans CJK JP" "Noto Color Emoji"];
         monospace = ["Noto Color Emoji"];
         emoji = ["Noto Color Emoji"];
      };
    };
  };
}

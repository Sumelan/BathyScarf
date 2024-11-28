{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      noto-fonts-cjk-sans
      noto-fonts-emoji
      (nerdfonts.override {
      fonts = [
        "JetBrainsMono"
        "FiraCode"
        "CascadiaCode"
        "NerdFontsSymbolsOnly"
      ];
    })
      font-awesome
      material-icons
    ];
    fontconfig = {
      defaultFonts = {
         serif = [ "Noto Serif CJK JP" "Noto Color Emoji"  ];
         sansSerif = ["Noto Sans CJK JP" "Noto Color Emoji"];
         monospace = [ "JetBrainsMono" "Noto Color Emoji"];
         emoji = ["Noto Color Emoji"];
      };
    };
  };
}

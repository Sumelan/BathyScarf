{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
    noto-fonts-cjk
    noto-fonts-emoji
    font-awesome
    material-icons
    ];
    fontconfig = {
      defaultFonts = {
         serif = [ "Noto Serif CJK JP" "Noto Color Emoji"  ];
         sansSerif = ["Noto Sans CJK JP" "Noto Color Emoji"];
         monospace = ["Noto Color Emoji"];
         emoji = ["Noto Color Emoji"];
      };
    };
  };
}

{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      source-code-pro
      noto-fonts-cjk-sans
      noto-fonts-emoji
      font-awesome
      powerline-fonts
      (nerdfonts.override { fonts = [ "JetBrainsMono" "FiraCode" ]; })
    ];
    fontconfig = {
      hinting.autohint = true;
      defaultFonts = {
         serif = [ "Noto Serif CJK JP" "Noto Color Emoji"  ];
         sansSerif = ["Noto Sans CJK JP" "Noto Color Emoji"];
         monospace = [ "JetBrainsMono Nerd Font Mono" "Noto Color Emoji"];
         emoji = ["Noto Color Emoji"];
      };
    };
  };
}

{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # discord
    # (discord.override {
    #  withVencord = true;
    # })
    webcord-vencord
  ];
  xdg.configFile."Vencord/themes/nordic.theme.css".source = ./nordic.css;
}

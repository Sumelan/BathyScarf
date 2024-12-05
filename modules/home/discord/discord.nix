{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # discord
    # (discord.override {
    #  withVencord = true;
    # })
    webcord-vencord
  ];
  xdg.configFile."Vencord/themes/everforest.theme.css".source = ./everforest.css;
}

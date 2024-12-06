{ pkgs, inputs, username, ... }:
{
  imports = [ inputs.stylix.nixosModules.stylix ];
  stylix = {
    enable = true;
    image = ../../wallpapers/wallpaper.png;
    base16Scheme = {
      base00 = "17181C";
      base01 = "1E1F24";
      base02 = "26272B";
      base03 = "333438";
      base04 = "8F9093";
      base05 = "B0B1B4";
      base06 = "CBCCCE";
      base07 = "E4E5E7";
      base08 = "FA3867";
      base09 = "F3872F";
      base0A = "FEBD16";
      base0B = "3FD43B";
      base0C = "47E7CE";
      base0D = "53ADE1";
      base0E = "AD60FF";
      base0F = "FC3F2C";
    };
    polarity = "dark";
    opacity.terminal = 0.8;
    cursor.package = pkgs.bibata-cursors;
    cursor.name = "Bibata-Modern-Ice";
    cursor.size = 24;
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      serif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      sizes = {
        applications = 12;
        terminal = 15;
        desktop = 11;
        popups = 12;
      };
    };
  };
}

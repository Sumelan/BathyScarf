{ config, pkgs, inputs, ... }:
let
  theme = config.stylix.base16Scheme;
in
{
  imports = [ inputs.textfox.homeManagerModules.default ];

  textfox = {
    enable = true;
    profile = "default";
    config = {
      background = {
        color = "#${theme.base00}";
      };
      border = {
        color = "#${theme.base04}";
        width = "4px";
        transition = "1.0s ease";
        radius = "3px";
      };
      displayHorizontalTabs = false;
      displayNavButtons = true;
      newtabLogo = "   __            __  ____          \A   / /____  _  __/ /_/ __/___  _  __\A  / __/ _ \\| |/_/ __/ /_/ __ \\| |/_/\A / /_/  __/>  </ /_/ __/ /_/ />  <  \A \\__/\\___/_/|_|\\__/_/  \\____/_/|_|  ";
      font = { 
        family = "JetBrainsMono Nerd Font";
        size = "15px";
        accent = "#${theme.base05}";
      };
        sidebery = {
        margin = "1.0rem";
      };
    };
  };
}

{ pkgs, config, ... }:
let
  theme = config.stylix.base16Scheme;
in
{
  programs.cava = {
    enable = true;
  };

  xdg.configFile."cava/config".text = ''
    # custom cava config

    [general]
    autosens = 1
    overshoot = 0

    [color]
    gradient = 1
    gradient_count = 3

    gradient_color_1 = '#${theme.base0E}'
    gradient_color_2 = '#${theme.base0A}'
    gradient_color_3 = '#${theme.base08}'
  '';
}

{ self, inputs, pkgs, ... }:
{
  imports = [
    ./binds.nix
    ./pyprland.nix
    ./rules.nix
    ./settings.nix
  ];

  home.packages =
    (with pkgs; [
      (bemoji.overrideAttrs (_oldAttrs: rec {
        version = "0.4.1";
        src = pkgs.fetchFromGitHub {
          owner = "MrSom3body";
          repo = "bemoji";
          rev = "refs/tags/v${version}";
          hash = "sha256-GxZVJQfYueNyUXYpRnmZ76C/m1x76BJPbhHWqkHHWpc=";
        };
      }))
      brightnessctl
      networkmanagerapplet
      nwg-displays
      satty
      wl-clipboard
      wl-screenrec
      wtype
    ])
    ++ [
      inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
      inputs.hyprpicker.packages.${pkgs.system}.default
    ];

  home.file.".config/hypr/scripts" = {
    source = ./scripts;
  };

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;

    # plugins = with inputs.hyprland-plugins.packages.${pkgs.system}; [
    #   hyprbars
    # ];
  };
}

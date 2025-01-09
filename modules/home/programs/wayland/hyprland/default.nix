{pkgs, ...}: {
  imports = [
    ./binds.nix
    ./pyprland.nix
    ./rules.nix
    ./settings.nix
  ];

  home.packages = with pkgs; [
    brightnessctl
    hyprpicker
    grimblast
    nwg-displays
    satty
    wl-clipboard
    wl-screenrec
    wtype
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

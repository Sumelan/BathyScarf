{ pkgs, inputs, ... }:
{
  home.packages = [
    inputs.pyprland.packages."${pkgs.system}".pyprland
  ];

  home.file.".config/hypr/pyprland.toml".text =
    # toml
    ''
      [pyprland]
      plugins = ["magnify"]
    '';

  wayland.windowManager.hyprland.settings = let
    zoomFactor = "0.5";
  in {
    exec-once = [
      "pypr"
    ];

    bindd = [
      "$mainMod, plus, Zoom in, exec, pypr zoom ++${zoomFactor}"
      "$mainMod, minus, Zoom out, exec, pypr zoom --${zoomFactor}"
    ];
  };
}

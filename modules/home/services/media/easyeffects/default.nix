{ pkgs, host, ... }:
{
  services.easyeffects = {
    enable = true;
    package = pkgs.easyeffects;
    # https://github.com/JackHack96/EasyEffects-Presets
    preset = (if (host == "Rin") then ''
      "Bass Enhancing + Perfect EQ"
    '' else "Loudness+Autogain");
  };
  home.file.".config/easyeffects/output" = {
    source = ./presets;
    recursive = true;
  };
}

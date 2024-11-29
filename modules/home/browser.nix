{ pkgs, ... }:
{
  home.packages = [
    (pkgs.wrapFirefox (pkgs.firefox-unwrapped.override { pipewireSupport = true;}) {})
  ];
}

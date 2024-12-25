{ pkgs, ...}:
{
  home.packages = with pkgs; [
    # archives
    zip
    unzip
    unar

    # misc
    libnotify

    # utils
    devenv
    glow
    speedtest-cli
  ];
}

{pkgs, ...}: {
  imports = [
    ./ffmpeg.nix
    ./spicetify.nix
  ];

  home.packages = with pkgs; [
    # audio control
    pwvucontrol

    # audio
    amberol

    # images
    inkscape
    krita
    swayimg

    # videos
    mpv
  ];
}

{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ffmpeg
    ffmpegthumbnailer
  ];
}

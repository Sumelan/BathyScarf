{ pkgs, ... }:
{
  imports = [
    ./helix
    ./neovim
  ];

  home.packages = with pkgs; [
    typora
    joplin-desktop
  ];
}

{ pkgs, ... }:
{
  imports = [
    ./fish
    ./bash.nix
    ./starship.nix
    ./zoxide.nix
  ];

  home.packages = with pkgs; [
    just
  ];

  home.shellAliases = {
    ip = "ip -c";
    l = "ls";
    icat = "${pkgs.libsixel}/bin/img2sixel";
  };

  home.sessionPath = ["$HOME/bin"];
}

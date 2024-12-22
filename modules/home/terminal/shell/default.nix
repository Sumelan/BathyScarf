{ pkgs, ... }:
{
  imports = [
    ./fish
    ./bash.nix
    ./starship.nix
    ./zoxide.nix
  ];

  home.shellAliases = {
    ip = "ip -c";
    l = "ls";
    icat = "${pkgs.libsixel}/bin/img2sixel";

    # Nixos
    cd-flake = "cd ~/BathyScarf";
    nix-switch = "nh os switch";
    nix-update = "nh os switch --update";
    nix-clean = "nh clean all --keep 5";
    nix-search = "nh search";
    nix-test = "nh os test";
  };

  home.sessionPath = ["$HOME/bin"];
}

{ pkgs, ... }:
{
  imports = [
    ./bat.nix
    ./btop.nix
    ./cava.nix
    ./fastfetch.nix
    ./fzf.nix
    ./git.nix
    ./helix.nix
    ./kitty.nix
    ./neovim.nix
    ./yazi.nix
  ];
}

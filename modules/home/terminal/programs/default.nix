{ pkgs, ... }:
{
  imports = [
    ./macchina
    ./xdg
    ./bat.nix
    ./btop.nix
    ./cli.nix
    ./direnv.nix
    ./eza.nix
    ./fd.nix
    ./fzf.nix
    ./git.nix
    ./ripgrep.nix
    ./tealdeer.nix
    ./thefuck.nix
    ./trash-cli.nix
    ./yazi.nix
  ];
}

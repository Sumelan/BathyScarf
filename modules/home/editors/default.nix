{pkgs, ...}: {
  imports = [
    ./helix
    ./neovim
    ./joplin.nix
  ];
}

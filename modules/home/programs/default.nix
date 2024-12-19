{ inputs, ... }:
{
  imports = [
    ./packages.nix
    ./xdg-desktopEntries.nix
    ./xdg-mimes.nix
  ];
}

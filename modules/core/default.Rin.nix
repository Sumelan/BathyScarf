{
  inputs,
  nixpkgs,
  self,
  username,
  host,
  ...
}:
{
  imports = [
    ./default.nix
  # Rin only modules.
    ./acme.nix
    ./age.nix
    ./audiobookshelf.nix
    ./borgbackup.nix
    ./nextcloud.nix
    ./udev.nix
  ];
}

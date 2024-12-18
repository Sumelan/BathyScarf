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
    ./audiobookshelf.nix
    ./borgbackup.nix
    ./nextcloud.nix
    ./udev.nix
  ];
}

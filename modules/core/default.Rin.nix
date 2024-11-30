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
    ./audiobookshelf.nix
    ./borgbackup.nix
    ./nextcloud.nix
  ];
}

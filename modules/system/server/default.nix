{ pkgs, ... }:
{
  imports = [
    ./acme.nix
    ./agenix.nix
    ./audiobookshelf.nix
    ./borgbackup.nix
    ./nextcloud.nix
  ];
}

{ pkgs, ... }:
{
  imports = [
    ./agenix.nix
    ./audiobookshelf.nix
    ./borgbackup.nix
    ./nextcloud.nix
    ./nginx.nix
  ];
}

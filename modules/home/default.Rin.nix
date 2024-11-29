{
  inputs,
  username,
  host,
  ...
}:
{
  imports = [
    ./default.nix

    ./audiobookshelf.nix
    ./borgbackup.nix
    ./nextcloud.nix
  ];
}

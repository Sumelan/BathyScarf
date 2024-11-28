{
  inputs,
  username,
  host,
  ...
}:
{
  imports = [
    ./default.nix

    ./audiobookshelf.nix                     # C# JetBrain editor
    ./borgbackup.nix
    ./nextcloud.nix
  ];
}

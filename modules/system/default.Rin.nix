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
    ./server
    ./hardware/keyboard.nix
    ./hardware/opentabletdriver.nix
  ];
}

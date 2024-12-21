{ pkgs, ... }:
{
  imports = [
    ./emulators
    ./programs
    ./shell
  ];
}

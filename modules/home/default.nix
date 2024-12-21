{ inputs, ... }:
{
  imports = [
    ./editors/helix
    ./editors/neovim
    ./programs
    ./services
    ./style
    ./terminal
  ];
}

{...}: {
  imports = [
    ./default.nix
    # Rin only modules.
    ./server
    ./hardware/keyboard.nix
    ./hardware/opentabletdriver.nix
  ];
}

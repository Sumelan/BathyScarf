{...}: {
  imports = [
    ./gpg-agent.nix
    ./kdeconnect.nix
    ./polkit.nix
    ./psd.nix
    ./udiskie.nix
  ];

  services.syncthing.enable = true;
}

{ pkgs, inputs, username, host, ... }:
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = {
      inherit inputs username host;
    };
    users.${username} = {
      imports =
        if (host == "Rin") then
          [ ./../../home/default.Rin.nix ]
        else
          [ ./../../home/default.nix ];
      home.username = "${username}";
      home.homeDirectory = "/home/${username}";
      home.stateVersion = "24.05";
      programs.home-manager.enable = true;
    };
  };

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [
      "networkmanager"
      "wheel"
      "input"
    ];
    shell = pkgs.fish;
  };
  # Enable automatic login for the user.
  services.getty.autologinUser = "${username}";
  nix.settings.allowed-users = [ "${username}" ];
}

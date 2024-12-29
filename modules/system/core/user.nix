{ pkgs, username, ... }:
{
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

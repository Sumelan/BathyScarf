{ pkgs, username, ...}:
{
  # services.gns3-server = {
  #   enable = true;
  #   dynamips.enable = true;
  #   ubridge.enable = true;
  #   vpcs.enable = true;
  # };

  # systemd.services.gns3-server.path = [pkgs.vmware-workstation];

  users.groups.ubridge = {};
  users.users.${username}.extraGroups = ["ubridge"];

  security.wrappers.ubridge = {
    source = "/run/current-system/sw/bin/ubridge";
    capabilities = "cap_net_admin,cap_net_raw=ep";
    owner = "root";
    group = "ubridge";
    permissions = "u+rx,g+rx,o+rx";
  };

  environment.systemPackages = with pkgs; [
    gns3-gui
    gns3-server

    dynamips
    inetutils
    ubridge
    vpcs
  ];
}

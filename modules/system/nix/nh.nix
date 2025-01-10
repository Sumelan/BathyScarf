{
  pkgs,
  username,
  ...
}: {
  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keep-since 1w --keep 5";
    };
    flake = "/home/${username}/BathyScarf";
  };

  environment.systemPackages = with pkgs; [
    nix-output-monitor
    nvd
  ];
}

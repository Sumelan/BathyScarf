{pkgs, ...}: {
  home.packages = with pkgs; [
    spot
  ];
}

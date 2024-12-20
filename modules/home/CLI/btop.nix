{ pkgs, host, ... }:
{
  programs.btop = {
    enable = true;

    settings = {
      theme_background = false;
      update_ms = 500;
    };
  };

  home.packages = (with pkgs; [
    (if (host == "Rin")then nvtopPackages.amd else nvtopPackages.intel)
  ]);
}

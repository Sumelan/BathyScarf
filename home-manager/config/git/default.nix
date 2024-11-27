{ ... }:
{
  programs.git = {
    enable = true;
    userName = "sumelan";
    userEmail = "bathys@proton.me";
    extraConfig = {
      init = { defaultBranch = "main"; };
      core = {
        excludesfile = "$NIXOS_CONFIG_DIR/scripts/gitignore";
      };
    };
  };

  programs.gh = {
    enable = true;
  };
}

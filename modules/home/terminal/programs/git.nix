{ pkgs, username, ... }:
{
  programs.git = {
    enable = true;

    userName = "${username}";
    userEmail = "bathys@proton.me";

    extraConfig = {
      init.defaultBranch = "main";
      credential.helper = "store";
      merge.conflictstyle = "diff3";
      diff.colorMoved = "default";
    };

    delta = {
      enable = true;
      options = {
        line-numbers = true;
        side-by-side = true;
        diff-so-fancy = true;
        navigate = true;
      };
    };
  };

  home.packages = with pkgs; [
    gh
    lazygit
    onefetch
  ]; # pkgs.git-lfs
}

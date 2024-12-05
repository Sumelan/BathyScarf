{ pkgs, ... }:
{
  programs.bat = {
    enable = true;
    config.pager = "less -FR";
    themes = {
      everforest-soft = {
        src = pkgs.fetchFromGitHub {
          owner = "neuromaancer";
          repo = "everforest_colleciton";
          rev = "75d504065a5c9a5a041f5cb4e0dc26a4d6956e85";
          sha256 = "sha256-r+XlFuc0x5lVJy3qDHgxlvpZzaMccYDbLtA0ss2DAWs=";
        };
        file = "everforest-soft.tmTheme";
      };
    };
    extraPackages = with pkgs.bat-extras; [
      batman
      batpipe
      batgrep
      # batdiff
    ];
  };
}

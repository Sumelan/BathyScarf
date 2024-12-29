{ pkgs, ... }:
{
  programs.joplin-desktop = {
    enable = true;
    package = pkgs.joplin-desktop;
    sync.target = "nextcloud";
    sync.interval = "10m";
    general.editor = "${pkgs.helix}/bin/hx";
    extraConfig = {
      "markdown.plugin.mark" = true;
      newNoteFocus = "title";
    };
  };
}

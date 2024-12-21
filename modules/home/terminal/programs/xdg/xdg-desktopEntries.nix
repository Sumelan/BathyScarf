{ pkgs,  ... }:
{
  xdg.desktopEntries = {
    # Add new .desktop files.
    "unar" = {
      name = "unar";
      noDisplay = true;
      exec = "${pkgs.unar}/bin/unar";
      terminal = true;
    };
  };
}

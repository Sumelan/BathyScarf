{ pkgs,  ... }:
{
  xdg.desktopEntries = {
    unar = {
      name = "unar";
      noDisplay = true;
      exec = "${pkgs.unar}/bin/unar";
      terminal = true;
    };
  };
}

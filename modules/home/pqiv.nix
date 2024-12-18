{ pkgs, ... }:
{
  programs.pqiv = {
    enable = true;
    settings = {
      options = {
        lazy-load = true;
        hide-info-box = true;
        background-pattern = "black";
        thumbnail-size = "256x256";
        command-1 = "thunar";
      };
    };
    extraConfig = ''
      [actions]
      set_cursor_auto_hide(1)
      [keybindings]
      t { montage_mode_enter() }
      @MONTAGE {
        t { montage_mode_return_cancel() }
      }
    '';
  };
}

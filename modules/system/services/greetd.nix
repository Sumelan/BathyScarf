{
  lib,
  config,
  username,
  ...
}: {
  services = {
    greetd = {
      enable = true;
      settings = {
        terminal.vt = 3;
        initial_session = {
          command = "${lib.getExe config.programs.uwsm.package} start hyprland-uwsm.desktop";
          user = "${username}";
        };
      };
    };
  };
  programs.regreet = {
    enable = true;
  };
  # unlock GPG keyring on login
  security.pam.services.greetd.enableGnomeKeyring = true;
}

{ pkgs, ... }:
{
# Home Manager Settings
  programs.home-manager.enable = true;
  home = {
    username = "sumelan";
    homeDirectory = "/home/sumelan";
    stateVersion = "24.05";
  };

  # Programs Config
  imports = [
    ./config/default.nix
  ];

  wal.enable = true;

  home.sessionPath = [
    "/home/sumelan/.cargo/bin"
  ];

# Create XDG Dirs
  xdg = {
    userDirs = {
      enable = true;
      createDirectories = true;
    };
  };

  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };
  };

  # Place Files Inside Home Directory
  # home.file.".face.icon".source = ./face.png;
  # home.file.".config/face.png".source = ./face.png;
  home.file."Pictures/Wallpapers" = {
    source = ../assets/wallpapers;
    recursive = true;
  };
  home.file.".config/swappy/config".text = ''
    [Default]
    save_dir=/home/sumelan/Pictures/Screenshots
    save_filename_format=swappy-%Y%m%d-%H%M%S.png
    show_panel=false
    line_size=5
    text_size=20
    text_font=Ubuntu
    paint_mode=brush
    early_exit=true
    fill_shape=false
  '';
# Scripts

  }

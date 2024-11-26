{pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages = with pkgs; [
    # Desktop stuff
      hypridle
      hyprlock
      hyprpicker
      rofi-wayland
      swappy
      swaynotificationcenter
    # audio
      pamixer
      pavucontrol
      wireplumber
    # spotify stuff
      spicetify-cli
      spotify
    # disocrd
      vesktop
    # browzer
      firefox
    # image-viewer
      imv
      pqiv
    # image-mannipulator
      gimp
    # text-editor
      neovide
      vim
    # media
      mpv
    # terminal
      alacritty
    # developping
      meson
      ninja
      nodejs_23
      pkg-config
      yad
    # tools
      cliphist
      file-roller
      networkmanagerapplet
    ## cli-programs
      bat
      brightnessctl
      cmatrix
      cowsay
      curl
      duf
      eza
      fastfetch
      fd
      ffmpeg
      ffmpegthumbnailer
      file
      fzf
      gh
      git
      htop
      inxi
      jq
      killall
      lazygit
      lolcat
      lshw
      lm_sensors
      ncdu
      nh
      pciutils
      playerctl
      pywal
      ripgrep
      slurp
      socat
      tree
      unar
      unrar
      unzip
      wget
      wl-clipboard
      xdragon
      yazi
      ydotool
      yt-dlp
      zoxide
    ## login
      greetd.tuigreet
    # libs/frameworks
      libsForQt5.kdeconnect-kde
      libnotify
      libvirt
      lxqt.lxqt-policykit
      nixfmt-rfc-style
      v4l-utils
    # vm
      appimage-run
      bottles
      qemu
      virt-viewer
      wine
      winetricks
  ];

  # Options
  programs = {
    neovim.enable = true;
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    nm-applet.enable = true;
    virt-manager.enable = true;
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
    kdeconnect.enable = true;
  };
}

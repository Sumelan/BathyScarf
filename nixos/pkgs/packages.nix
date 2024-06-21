{pkgs, ... }:
{
  imports = [
      ./options.nix
  ];

  nixpkgs.config = {
    allowUnfree = true;
  };
  environment.systemPackages =
    let
      sugar = pkgs.callPackage ./sddm/sugar-dark.nix { };
      tokyo-night = pkgs.libsForQt5.callPackage ./sddm/tokyo-night.nix { };
    in
      with pkgs; [
    # de stuff
      brightnessctl
      cava
      cliphist
      dunst
      eww
      feh
      gparted
      gwenview
      grim
      grimblast
      kitty
      libnotify
      lm_sensors
      maim
      mpv
      networkmanagerapplet
      rofi-wayland
      polkit_gnome
      slurp
      swappy
      swww
      unrar
      unzip
      wl-clipboard
      wpgtk
      yad
    # audio
      easyeffects
      pamixer
      pavucontrol
      wireplumber
    # programs
      anki-bin
      bitwarden
      bottles
      brave
      brillo
      catppuccinifier-gui
      cpufrequtils
      gimp
      hypridle
      hyprlock
      hyprpicker
      hyprshade
      kdenlive
      krita
      lutris
      neovide
      obs-studio
      obsidian
      protonup-qt
      steam
      soundconverter
      spicetify-cli
      spotify
      thunderbird
      vencord
      vesktop
      vlc
      vscode
      udiskie
      wine
      winetricks
    # CLI programs
      acpi
      atuin
      bat
      btop
      clinfo
      cowsay
      curl
      fastfetch
      fd
      ffmpeg
      ffmpegthumbnailer
      file
      fzf
      gh # github cli
      git
      jq
      libappindicator
      lazygit
      lsd
      lshw
      ncspot
      nh
      nitch
      playerctl
      poppler
      qmk
      ripgrep
      starship
      socat
      spotdl
      unar
      vim
      wget
      xdg-utils
      ydotool
      yt-dlp
      zoxide
    # libs/frameworks
      gtk3
      libsForQt5.kdeconnect-kde
      libsForQt5.qt5.qtwayland
      meson
      ninja
      nixfmt-rfc-style
      nodejs
      opencv
      pkg-config
      python3
      qt6.qtwayland
      v4l-utils
    # vm
      qemu
    # sddm
      sugar.sddm-sugar-dark # Name: sugar-dark
      tokyo-night # Name: tokyo-night-sddm
  ];
}

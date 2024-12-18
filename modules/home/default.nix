{inputs, username, host, ...}: {
  imports = [
    ./hypr                       # window manager
    ./p10k/p10k.nix
    ./scripts/scripts.nix        # personal scripts
    ./waybar                     # status bar
    ./zsh                        # shell
    ./audacious.nix              # music player
    ./bat.nix                    # better cat command
    ./btop.nix                   # resouces monitor 
    ./cava.nix                   # audio visualizer
    ./fastfetch.nix              # fetch tool
    ./fzf.nix                    # fuzzy finder
    ./git.nix                    # version control
    ./gtk.nix                    # gtk theme
    ./helix.nix
    ./kitty.nix                  # terminal
    ./neovim.nix                 # neovim editor
    ./packages.nix               # other packages
    ./pqiv.nix                   # image viewer
    ./rofi.nix                   # launcher
    ./spicetify.nix              # spotify client
    ./starship.nix               # shell prompt
    ./stylix.nix
    ./swaync.nix                 # notification deamon
    ./swayosd.nix                # brightness / volume wiget
    ./textfox.nix
    ./waypaper.nix               # GUI wallpaper picker
    ./xdg-mimes.nix              # xdg config
    ./yazi.nix                   # terminal file manager
  ];
}

{inputs, username, host, ...}: {
  imports = [
    ./audacious.nix              # music player
    ./bat.nix                    # better cat command
    ./browser.nix                # firefox
    ./btop.nix                   # resouces monitor 
    ./cava.nix                   # audio visualizer
    ./fastfetch.nix              # fetch tool
    ./fzf.nix                    # fuzzy finder
    ./git.nix                    # version control
    ./gnome.nix                  # gnome apps
    ./gtk.nix                    # gtk theme
    ./hypr                       # window manager
    ./kitty.nix                  # terminal
    ./swaync.nix                 # notification deamon
    ./swayosd.nix                # brightness / volume wiget
    ./nemo.nix                   # file manager
    ./neovim.nix                 # neovim editor
    ./obsidian.nix
    ./p10k/p10k.nix
    ./packages.nix               # other packages
    ./rofi.nix                   # launcher
    ./scripts/scripts.nix        # personal scripts
    ./spicetify.nix              # spotify client
    ./starship.nix               # shell prompt
    ./stylix.nix
    ./vesktop.nix
    ./viewnior.nix               # image viewer
    ./waybar                     # status bar
    ./waypaper.nix               # GUI wallpaper picker
    ./xdg-mimes.nix              # xdg config
    ./yazi.nix                   # terminal file manager
    ./zsh                        # shell
  ];
}

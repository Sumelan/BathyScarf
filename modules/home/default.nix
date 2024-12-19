{inputs, username, host, ...}: {
  imports = [
    ./hypr
    ./p10k
    ./programs
    ./scripts
    ./waybar
    ./zsh
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
    ./rofi.nix                   # launcher
    ./spicetify.nix              # spotify client
    ./stylix.nix
    ./swaync.nix                 # notification deamon
    ./swayosd.nix                # brightness / volume wiget
    ./textfox.nix
    ./waypaper.nix               # GUI wallpaper picker
    ./yazi.nix                   # terminal file manager
  ];
}

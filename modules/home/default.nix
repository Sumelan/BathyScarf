{inputs, username, host, ...}: {
  imports = [
    ./audacious.nix              # music player
    ./bat.nix                    # better cat command
    ./browser.nix                # firefox
    ./btop.nix                   # resouces monitor 
    ./cava.nix                   # audio visualizer
    ./discord/discord.nix        # discord with gruvbox
    ./fastfetch.nix              # fetch tool
    ./fzf.nix                    # fuzzy finder
    ./git.nix                    # version control
    ./gnome.nix                  # gnome apps
    ./gtk.nix                    # gtk theme
    ./hypr                       # window manager
    ./kitty.nix                  # terminal
    ./swayosd.nix                # brightness / volume wiget
    ./swaync/swaync.nix          # notification deamon
    ./nemo.nix                   # file manager
    ./neovim.nix                 # neovim editor
    ./obsidian.nix
    ./p10k/p10k.nix
    ./packages.nix               # other packages
    ./rofi.nix                   # launcher
    ./scripts/scripts.nix        # personal scripts
    ./spicetify.nix              # spotify client
    ./starship.nix               # shell prompt
    ./viewnior.nix               # image viewer
    ./vscodium.nix               # vscode forck
    ./waybar                     # status bar
    ./waypaper.nix               # GUI wallpaper picker
    ./xdg-mimes.nix              # xdg config
    ./yazi.nix                   # terminal file manager
    ./zsh                        # shell
  ];
}

# BathyScarf / 罰襟巻

<img src="./.github/assets/logo/nixos-logo.png" style="zoom:33%;" />

<img src="./.github/assets/pallet/pallet1.png" style="zoom:150%;" />

# 🗃️ Overview
## 📚 Layout

- [flake.nix](https://github.com/Sumelan/BathyScarf/blob/main/flake.nix) base of the configuration.
- [hosts](https://github.com/Sumelan/BathyScarf/tree/main/hosts) 🌳 per-host configurations that contain machine specific configurations.
  - [Rei / 鈴](https://github.com/Sumelan/BathyScarf/tree/main/hosts/Rei) 💻 Acer Intel Laptop.
  - [Rin / 零](https://github.com/Sumelan/BathyScarf/tree/main/hosts/Rin) 🖥️ Minisforum AMD Desktop.
- [modules](https://github.com/Sumelan/BathyScarf/tree/main/modules) 🍱 modularized NixOS configurations.
  - [system](https://github.com/Sumelan/BathyScarf/tree/main/modules/system) ⚙️ Nixos system config.
  - [home](https://github.com/Sumelan/BathyScarf/tree/main/modules/home) 🏠 Home-manager config.
- [overlay](https://github.com/Sumelan/BathyScarf/tree/main/overlays) 📦 Nixpkgs with overlays.
- [secrets](https://github.com/Sumelan/BathyScarf/tree/main/secrets) 🔐 Encrypted secrets using [agenix](https://github.com/ryantm/agenix)

## 📓 Components

|    **Window Manager**    |                 **Hyprland**                  |
| :----------------------: | :-------------------------------------------: |
|         **Bar**          |                  **Waybar**                   |
| **Application Launcher** |                  **Fuzzel**                   |
| **Notification Daemon**  |                   **Fnott**                   |
|  **Terminal Emulator**   |                   **Foot**                    |
|        **Shell**         |                   **Fish**                    |
|     **File Manager**     |             **Thunar** + **Yazi**             |
|        **Fonts**         | **FiraCode Nerd Font** + **Ubuntu Nerd Font** |
|     **Color Scheme**     |       **Gruvbox Material Dark Medium**        |
|        **Cursor**        |           **Bibata-Modern-Classic**           |
|        **Icons**         |               **Papirus-Dark**                |

# 👥 Credits

Other dotfiles that I learned / copy from:
- [Tyler Kelly / ZaneyOS](https://gitlab.com/Zaney/zaneyos)
    You should start learniig NixOS from this repo.  Plus, he has a nice community on Discord.
- [Frost-Phoenix / nixos-config](https://github.com/Frost-Phoenix/nixos-config)
    Main config and file structures from this repo.

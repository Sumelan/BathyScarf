<h1 align="center">
<img src="./.github/assets/logo/nixos-logo.png" width="100px" />
<br>
  BathyScarf / 罰襟巻
<br>
<img src="./.github/assets/pallet/pallet1.png" width="600px" height="10px" />
</h1>

## screenshots

# 🗃️ Overview
## 📚 Layout

- [flake.nix](flake.nix) base of the configuration.
- [hosts](hosts/) 🌳 per-host configurations that contain machine specific configurations.
  - [Rei / 零](hosts/Rei/) 💻 Acer Intel Laptop.
  - [Rin / 鈴](hosts/Rin/) 🖥️ Minisforum AMD Desktop.
- [modules](modules/) 🍱 modularized NixOS configurations.
  - [system](modules/system/) ⚙️ Nixos system config.
  - [home](modules/home/) 🏠 Home-manager config.
- [overlay](overlays/) 📦 Nixpkgs with overlays.
- [secrets](secrets/) 🔐 Encrypted secrets using [agenix](https://github.com/ryantm/agenix).
- [wallpapers](wallpapers/) 🌄 Default wallpaper.

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

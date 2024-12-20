{ pkgs,  ... }:
{
  xdg.desktopEntries = {
    # Add new .desktop files.
    "unar" = {
      name = "unar";
      noDisplay = true;
      exec = "${pkgs.unar}/bin/unar";
      terminal = true;
    };
    # Rename/Modify existing .desktop files.
    # Note that Rofi and its theme-selector seems not to be hidden even if set both noDisplay and Hidden to true...
    "org.fcitx.Fcitx5" = {
      name = "Fcitx 5";
      genericName = "Input Method";
      comment = "Start Input Method";
      noDisplay = true;
      icon = "fcitx";
      exec = "${pkgs.fcitx5}/bin/fcitx5";
      terminal = false;
      startupNotify = false;
      type = "Application";
      categories = [ "System" ];
      settings = {
        X-GNOME-AutoRestart = "false";
        X-GNOME-Autostart-Notify = "false";
        X-KDE-autostart-after = "panel";
        X-KDE-StartupNotify = "false";
        X-KDE-Wayland-VirtualKeyboard = "true";
        X-KDE-Wayland-Interfaces = "org_kde_plasma_window_management";
      };
    };
    "org.fcitx.fcitx5-migrator" = {
      name = "Fcitx 5 Migration Wizard";
      noDisplay = true;
      icon = "fcitx";
      exec = "fcitx5-migrator";
      type = "Application";
      categories = [ "Settings" ];
    };
    "kcm_fcitx5" = {
      name = "Input Method";
      comment = "Configure Input Method";
      noDisplay = true;
      icon = "fcitx";
      exec = "systemsettings kcm_fcitx5";
      type = "Application";
      settings = {
        X-KDE-AliasFor = "systemsettings";
      };
    };
    "blueman-manager" = {
      name = "Bluetooth Manager";
      comment = "Blueman Bluetooth Manager";
      icon = "blueman";
      exec = "blueman-manager";
      terminal = false;
      type = "Application";
      startupNotify = true;
    };
    "kbd-layout-viewer5" = {
      name = "Keyboard layout viewer";
      comment = "View keyboard layout";
      noDisplay = true;
      icon = "input-keyboard";
      exec = "kbd-layout-viewer5";
      type = "Application";
    };
    "nm-connection-editor" = {
      name = "Advanced Network Configuration";
      comment = "Manage and change your network connection settings";
      noDisplay = true;
      icon = "preferences-system-network";
      exec = "nm-connection-editor";
      terminal = false;
      startupNotify = true;
      type = "Application";
    };
    "thunar" = {
      name = "Thunar File Manager";
      genericName = "File Manager";
      comment = "Browse the filesystem with the file manager";
      icon = "org.xfce.thunar";
      exec = "thunar %U";
      terminal = false;
      startupNotify = true;
      type = "Application";
      categories = [ "System" "Core" "GTK" "FileTools" "FileManager"];
      mimeType = [ "inode/directory" ];
      actions = {
        open-home = {
          name = "Home";
          exec = "thunar %U";
        };
        open-computer = {
          name = "Computer";
          exec = "thunar computer:///";
        };
        open-trash = {
          name = "Trash";
          exec = "thunar trash:///";
        };
      };
      settings = {
        Keywords = "file manager;explorer;finder;browser;folders;directory;directories;partitions;drives;network;devices;rename;move;copy;delete;permissions;home;trash;";
      };
    };
    "thunar-settings" = {
      name = "File Manager Settings";
      comment = "Configure the Thunar file manager";
      noDisplay = true;
      icon = "org.xfce.thunar";
      exec = "thunar-settings";
      terminal = false;
      startupNotify = true;
      type = "Application";
      categories = [ "XFCE" "GTK" "Settings" "DesktopSettings" "X-XFCE-SettingsDialog" "X-XFCE-PersonalSettings" ];
      settings = {
        Version = "1.0";
        Keywords = "thunar;settings;preferences;configure;thumbnails;file size;date format;shortcuts pane;tree view;tabs;";
      };
    };
    "thunar-bulk-rename" = {
      name = "Bulk Rename";
      genericName = "Bulk Rename";
      comment = "Rename Multiple Files";
      icon = "org.xfce.thunar";
      exec = "thunar --bulk-rename %F";
      terminal = false;
      startupNotify = true;
      type = "Application";
      categories = [ "Utility" "Core" "GTK" ];
      settings = {
        Keywords = "bulk;renamer;renaming;thunar;files;folders;directory;directories;";
      };
    };
    "thunar-volman-settings" = {
      name = "Removable Drives and Media";
      comment = "Configure management of removable drives and media";
      icon = "org.xfce.volman";
      exec = "thunar-volman-settings";
      terminal = false;
      startupNotify = true;
      type = "Application";
      categories = [ "XFCE" "GTK" "Settings" "DesktopSettings" "X-XFCE-SettingsDialog" "X-XFCE-HardwareSettings" ];
      settings = {
        X-XfcePluggable = "true";
        X-XfceHelpComponent = "thunar";
        X-XfceHelpPage = "using-removable-media";
      };
    };
    "org.xfce.mousepad" = {
      name = "Mausepad";
      genericName = "Text Editor";
      comment = "Simple Text Editor";
      icon = "org.xfce.mousepad";
      exec = "mousepad %U";
      terminal = false;
      startupNotify = true;
      type = "Application";
      categories = [ "Utility" "TextEditor" "GTK" ];
      mimeType = [ "text/plain" "application/x-zerosize" ];
      actions = {
        preferences = {
          name = "Mousepad Preferences";
          exec = "mousepad --preferences";
        };
      };
      settings = {
        Version = "1.0";
        Keywords = "Edit;Text;Simple;XFCE;Lightweight;Fast;";
      };
    };
    "org.xfce.mousepad-settings" = {
      name = "Text Editor Settings";
      comment = "Configure the Mousepad text editor";
      noDisplay = true;
      icon = "org.xfce.mousepad";
      exec = "mousepad --preferences";
      terminal = false;
      startupNotify = true;
      type = "Application";
      categories = [ "XFCE" "GTK" "Settings" "DesktopSettings" "X-XFCE-SettingsDialog" "X-XFCE-PersonalSettings" ];
      settings = {
        Version = "1.0";
        Keywords = "Text;Editor;Mousepad;Preferences;Settings;Configure;";
        NotShowIn = "GNOME";
      };
    };
    "rofi" = {
      name = "Rofi";
      noDisplay = true;
      icon = "rofi";
      exec = "rofi -show";
      terminal = false;
      type = "Application";
      settings = {
        Version = "1.0";
      };
    };
    "rofi-theme-selector" = {
      name = "Rofi Theme Selector";
      noDisplay = true;
      icon = "rofi";
      exec = "rofi-theme-selector";
      terminal = false;
      type = "Application";
      settings = {
        Version = "1.0";
      };
    };
    "gimp" = {
      name = "GNU Image Manipulation Program";
      genericName = "Image Editor";
      comment = "Create images and edit photographs";
      icon = "gimp";
      exec = "gimp-2.10 %U";
      terminal = false;
      categories = [ "Graphics" "2DGraphics" "RasterGraphics" "GTK" ];
      startupNotify = true;
      mimeType = [ "image/bmp" "image/g3fax" "image/gif" "image/x-fits" "image/x-pcx" "image/x-portable-anymap" "image/x-portable-bitmap" "image/x-portable-graymap" "image/x-portable-pixmap" "image/x-psd" "image/x-sgi" "image/x-tga" "image/x-xbitmap" "image/x-xwindowdump" "image/x-xcf" "image/x-compressed-xcf" "image/x-gimp-gbr" "image/x-gimp-pat" "image/x-gimp-gih" "image/x-sun-raster" "image/tiff" "image/jpeg" "image/x-psp" "application/postscript" "image/png" "image/x-icon" "image/x-xpixmap" "image/x-exr" "image/webp" "image/x-webp" "image/heif" "image/heic" "image/avif" "image/jxl" "image/svg+xml" "application/pdf" "image/x-wmf" "image/jp2" "image/x-xcursor" ];
      type = "Application";
      settings = {
        Version = "1.0";
        Keywords = "GIMP;graphic;design;illustration;painting;";
        TryExec = "gimp-2.10";
        StartupWMClass = "gimp-2.10";
      };
    };
    "yazi" = {
      name = "Yazi";
      comment = "Blazing fast terminal file manager written in Rust, based on async I/O";
      icon = "yazi";
      exec = "kitty yazi %u";
      terminal = true;
      type = "Application";
      categories = [ "Core" "System" "FileTools" "FileManager" "ConsoleOnly" ];
      mimeType = [ "inode/directory" ];
      settings = {
        TryExec = "kitty yazi";
        Keywords = "File;Manager;Explorer;Browser;Launcher";
      };
    };
    "virt-manager" = {
      name = "Virtual Machine Manager";
      comment = "Manage virtual machines";
      icon = "virt-manager";
      exec = "virt-manager";
      terminal = false;
      type = "Application";
      categories = [ "System" ];
      settings = {
        Keywords = "vmm";
      };
    };
    "remote-viewer" = {
      name = "Remote Viewer";
      comment = "Access remote desktops";
      icon = "virt-viewer";
      exec = "remote-viewer %u";
      terminal = false;
      startupNotify = true;
      mimeType = [ "x-scheme-handler/spice" "x-scheme-handler/spice+unix" "x-scheme-handler/spice+tls" "application/x-virt-viewer" ];
      type = "Application";
      categories = [ "GNOME" "GTK" "Network" "RemoteAccess" ];
    };
  };
}

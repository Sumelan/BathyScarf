{host, ...}: {
  wayland.windowManager.hyprland.settings = {
    "$floatingSize" = "800 600";
    "$pwvucontrol" = "com.saivert.pwvucontrol";

    windowrulev2 = [
      # Smart Gaps
      "noborder 1, floating:0, onworkspace:w[tv1] s[false]"
      "norounding 1, floating:0, onworkspace:w[tv1] s[false]"
      "noshadow 1, floating:0, onworkspace:w[tv1] s[false]"
      "noborder 1, floating:0, onworkspace:f[1] s[false]"
      "norounding 1, floating:0, onworkspace:f[1] s[false]"
      "noshadow 1, floating:0, onworkspace:f[f1] s[false]"

      # Ignore maximize requests from apps
      "suppressevent maximize, class:.*"

      # Fix some dragging issues with XWayland
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      # NetworkManager applet
      "float, class:^(nm-connection-editor)$"
      "size $floatingSize, class:^(nm-connection-editor)$"
      "center, class:^(nm-connection-editor)$"

      # Blueman
      "float, class:^(.blueman-manager-wrapped)$"
      "size $floatingSize, class:^(.blueman-manager-wrapped)$"
      "center, class:^(.blueman-manager-wrapped)$"

      # Audio control
      "float, class:^($pwvucontrol)$"
      "size $floatingSize, class:^($pwvucontrol)$"
      "center, class:^($pwvucontrol)$"

      # Thunar
      "float, class:^(thunar)$"
      "size $floatingSize, class:^(thunar)$"
      "center, class:^(thunar)$"

      # Udiskie
      "float, class:^(udiskie)$"
      "center, class:^(udiskie)$"

      # Waypaper
      "float, class:^(waypaper)$"
      "center, class:^(waypaper)$"

      # Krita
      "monitor DP-1, class:^(krita)$"
      "noblur, floating:1, class^(krita)$"
      "noborder, floating:1, class:^(krita)$"
      "nodim, floating:1, class^(krita)$"
      "norounding, floating:1, class:^(krita)$"
      "noshadow, floating:1, class:^(krita)$"

      # make Zen PiP window floating and sticky
      "float, title:^(Picture-in-Picture)$"
      "pin, title:^(Picture-in-Picture)$"

      # Move apps to workspaces
      "workspace special:discord, class:^(discordcanary)$"
      "workspace special:joplin, class:^(joplin-desktop)$"

      # Dim some programs
      "dimaround, class:^(xdg-desktop-portal-gtk)$"
      "dimaround, class:^(polkit-gnome-authentication-agent-1)$"

      # don't render hyprbars on tiling windows
      "plugin:hyprbars:nobar, floating:0"
    ];

    layerrule = [
      # Sway notification Center
      "animation slide right, swaync-control-center"
      "dimaround, swaync-control-center"
      "blur, swaync-control-center"
      "ignorezero, swaync-control-center"

      # waybar
      "blur, waybar"
      "ignorezero, waybar"

      # Rofi
      "animation slide, rofi"
      "dimaround, rofi"
      "blur, rofi"
      "ignorezero, rofi"

      # fuzzel
      "animation slide, launcher"
      "dimaround, launcher"
      "blur, launcher"
      "ignorezero, launcher"

      # fnott
      "animation slide, notifications"
      "blur, notifications"
      "ignorezero, notifications"
    ];

    workspace = [
      # Smart Gaps
      "w[tv1], gapsout:0, gapsin:0"
      "f[1], gapsout:0, gapsin:0"

      "special:special, gapsout:75"

      "special:spotify, on-created-empty:uwsm app -- spot"
      "special:spotify, gapsout:75"

      "special:btop, on-created-empty:uwsm app -- foot --title btop --app-id btop -- btop"
      "special:btop, gapsout:50"

      "special:discord, on-created-empty:uwsm app -- discordcanary"
      "special:discord, gapsout:75"

      "special:joplin, on-created-empty:uwsm app -- joplin-desktop"
      "special:joplin, gapsout:75"

      # Monitor - Huion
      "6, monitor:DP-1, default:true"
    ];
    monitor =
      if (host == "Rin")
      then [
        "DP-1,2560x1440,0x0,1"
        "HDMI-A-1,2560x1440,0x-1440,1"
      ]
      else [
        ",preferred,auto,1"
      ];
  };
}

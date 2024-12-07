{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [ 
    unar
    xdragon
  ];

  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    # package = pkgs.yazi-unwrapped;
    settings = {
      manager = {
        linemode = "size";
        show_hidden = true;
        show_symlink = true;
        sort_by = "natural";
        sort_dir_first = true;
        sort_reverse = false;
        sort_sensitive = false;
      };
      preview = {
        image_filter = "lanczos3";
        image_quality = 80;
        max_width = 600;
        max_height = 900;
        ueberzug_scale = 1;
        ueberzug_offset = [0 0 0 0];
      };
      tasks = {
        micro_workers = 5;
        macro_workers = 10;
        bizarre_retry = 5;
      };
      open = {
        rules = [
          { use = "edit"; mime = "text/*"; }
          { use = "open"; mime = "image/*"; }
          { use = ["play" "reveal"]; mime = "video/*"; }
          { use = ["play" "reveal"]; mime = "audio/*"; }
        ];
      };
      opener = {
        edit = [
          { run = "$EDITOR \"$@\""; block = true; }
        ];
        open = [
          { run = "pqiv \"$@\""; desc = "Open"; }
        ];
        play = [
          { run = "mpv \"$@\""; orphan = true; }
        ];
        archive = [
          { run = "unar \"$@\""; desc = "Extract here"; }
        ];
        reveal = [
          {
            run = "''${pkgs.exiftool}/bin/exiftool \"$1\"; echo \"Press enter to exit\"; read _''";
            block = true;
            desc = "Show EXIF";
          }
          {
            run = "''${pkgs.mediainfo}/bin/mediainfo \"$1\"; echo \"Press enter to exit\"; read _''";
            block = true;
            desc = "Show media info";
          }
        ];
      };
    };

    keymap = {
      manager.append_keymap = [
        # Custom command
        {
          run = "shell 'dragon -x -i -T \"$@\"' --confirm";
          desc = "Create a window for drag-and-drop";
          on = ["<A-d>"];
        }
      ];
    };

    theme = {
      icon = {
        append_exts = [
          { name = "*.jsx"; text = ""; }
          { name = "*.lua"; text = ""; }
          { name = "*.nix"; text = ""; }
        ];
      };
      filetype = {
        rules = [
          # Images
          { mime = "image/*"; fg = "yellow"; }
          # Videos
	        { mime = "video/*"; fg = "magenta"; }
	        { mime = "audio/*"; fg = "magenta"; }
	        # Empty files
	        { mime = "inode/x-empty"; fg = "cyan"; }
	        # Orphan symbolic links
	        { name = "*"; is = "orphan"; fg = "red"; }
          # Fallback
	        { name = "*/"; fg = "blue"; }
        ];
      };
    };

    plugins = {
      full-border = "${inputs.yazi-plugins}/full-border.yazi";
    };
  };
  xdg.configFile."yazi/init.lua".text = ''
    require("full-border"):setup()
  '';
}

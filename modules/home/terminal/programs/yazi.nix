{ inputs, pkgs, ... }:
let
  # dragon [option]
  thumb-size = "300";
  option = "-s ${thumb-size} -x -i -T --all";
in
{
  home.packages = with pkgs; [ 
    xdragon
    exiftool
    mediainfo
  ];

  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
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
      opener.extract = [
          { run = "unar \"$@\""; desc = "Extract here"; }
        ];
    };
    keymap = {
      # Custom keymap
      manager.append_keymap = [
        {
          run = "shell 'dragon ${option} \"$@\"' --confirm";
          desc = "Create a windows to be dragged";
          on = ["<A-d>"];
        }
      ];
    };
    theme = {
      # Custom icon
      icon.append_exts = [
        { name = "*.jsx"; text = ""; }
        { name = "*.lua"; text = ""; }
        { name = "*.nix"; text = ""; }
      ];
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

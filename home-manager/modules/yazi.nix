{ pkgs, config, lib, ... }:
{
  programs.yazi = {
    enable = true;
    settings = {
      manager = {
        sort_by = "natural";
        show_hidden = true;
        show_symlink = true;
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
          {
            use = "open";
            mime = "image/*";
          }
          {
            use = ["play" "reveal"];
            mime = "video/*";
          }
          {
            use = ["play" "reveal"];
            mime = "audio/*";
          }
        ];
      };

      opener = {
        edit = [
          {
            run = "nvim \"$@\"";
            block = true;
            for = "unix";
          }
        ];
        open = [
          {
            run = "qimgv \"$@\"";
            desc = "Open";
          }
        ];
        reveal = [
          {
            run = "''${pkgs.exiftool}/bin/exiftool \"$1\"; echo \"Press enter to exit\"; read _''";
            block = true;
            desc = "Show EXIF";
          }
        ];
        play = [
          {
            run = "mpv \"$@\"";
            orphan = true;
          }
          {
            run = "''${pkgs.mediainfo}/bin/mediainfo \"$1\"; echo \"Press enter to exit\"; read _''";
            block = true;
            desc = "Show media info";
          }
        ];
        archive = [
          {
            run = "unar \"$1\"";
            desc = "Extract here";
          }
        ];
      };
    };

    keymap = {
      manager.keymap = [
        {
          run = "shell 'dragon -x -i -T \"$1\"' --confirm";
          on = ["<C-d>"];
        }
        {
          run = "close";
          desc = "Close the current tab, or quit if it is last tab";
          on = ["<C-c>"];
        }
        {
          run = "suspend";
          desc = "Suspend the process";
          on = ["<C-z>"];
        }
        {
          run = "arrow -1";
          desc = "Move cursor up";
          on = ["<Up>" "k"];
        }
        {
          run = "arrow 1";
          desc = "Move Cursor down";
          on = ["<Down>" "j"];
        }
        {
          run = "leave";
          desc = "Go back to the parent directory";
          on = ["<Left>" "h"];
        }
        {
          run = "enter";
          desc = "Enter the child directory";
          on = ["<Right>" "l"];
        }
        {
          run = "back";
          desc = "Go back to the previous directory";
          on = ["H"];
        }
        {
          run = "forward";
          desc = "Go forward to the next directory";
          on = ["L"];
        }
        {
          run = "open";
          desc = "Open selected files";
          on = ["<Enter>" "o"];
        }
        {
          run = "open --interactive";
          desc = "Open selected files interactively";
          on = ["<S-Enter>" "O"];
        }
        {
          run = "yank";
          desc = "Yank selected files (copy)";
          on = ["y"];
        }
        {
          run = "yank --cut";
          desc = "Yank selected files (cut)";
          on = ["x"];
        }
        {
          run = "paste";
          desc = "Paste yanked files";
          on = ["p"];
        }
        {
          run = "paste --force";
          desc = "Paste yanked files (overwrite if the destination exists)";
          on = ["P"];
        }
        {
          run = "link";
          desc = "Symlink the absolute path of yanked files";
          on = ["-"];
        }
        {
          run = "link --relative";
          desc = "Symlink the relative path of yanked files";
          on = ["_"];
        }
        {
          run = "quit";
          desc = "Exit the process";
          on = ["q"];
        }
        {
          run = "quit --no-cwd-file";
          desc = "Exit the process without writing cwd-file";
          on = ["Q"];
        }
        {
          run = "help";
          desc = "Open help";
          on = ["~"];
        }
        {
          run = "help";
          desc = "Open help";
          on = ["<F1>"];
        }
      ];
      completion.keymap = [
        {
          on = ["<Esc>"];
          run = "close";
          desc = "Cancel completion";
        }
        {
          on = ["<Tab>"];
          run = "close --submit";
          desc = "Submit the completion";
        }
      ];

      tasks.keymap = [
        {
          run = "close";
          on = ["<Esc>"];
        }
        {
          run = "arrow -1";
          on = ["<Up>"];
        }
        {
          run = "arrow 1";
          on = ["<Down>"];
        }
        {
          run = "arrow -1";
          on = ["k"];
        }
        {
          run = "arrow 1";
          on = ["j"];

        }


      ];
      select.keymap = [
        {
          run = "close";
          on = ["<Esc>"];
        }
        {
          run = "close --submit";
          on = ["<Enter>"];
        }
      ];
      input.keymap = [
        {
          run = "close";
          on = ["<Esc>"];
        }
        {
          run = "close --submit";
          on = ["<Enter>"];
        }
      ];
      help.keymap = [
        {
          run = "escape";
          on = ["<Esc>"];
        }
        {
          run = "filter";
          on = ["/"];
        }
      ];
    };
    theme = {
      manager = {
        
      };
      icon = {
        rules = [
          {
            name = "*.jsx";
            text = "";
          }
          {
            name = "*.lua";
            text = "";
          }
          {
            name = "*.nix";
            text = "";
          }
        ];
      };
      filetype = {
        rules = [
          # Images
          {
            mime = "image/*";
          }
        ];
      };
    };
  };
}

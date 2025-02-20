{ pkgs, ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        placeholder = "Type to search...";
        prompt = "'❯ '";
        icon-theme = "Papirus";
        launch-prefix = "uwsm app --";
        match-counter = true;
        terminal = "foot -e";
        horizontal-pad = 40;
        vertical-pad = 20;
        inner-pad = 15;
      };

      border = {
        width = 2;
        radius = 7;
      };
    };
  };

  home.packages = with pkgs; [
    jq
  ];

  home.file = {
    "bin/fuzzel-actions" = {
      source = ./scripts/fuzzel-actions.fish;
      executable = true;
    };
    "bin/fuzzel-clipboard" = {
      source = ./scripts/fuzzel-clipboard.fish;
      executable = true;
    };
    "bin/fuzzel-files" = {
      source = ./scripts/fuzzel-files.fish;
      executable = true;
    };
    "bin/fuzzel-windows" = {
      source = ./scripts/fuzzel-windows.fish;
      executable = true;
    };
  };
}

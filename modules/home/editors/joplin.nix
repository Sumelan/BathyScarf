{ pkgs, ... }:
{
  programs.joplin-desktop = {
    enable = true;
    package = pkgs.joplin-desktop;
    sync.target = "nextcloud";
    sync.interval = "10m";
    general.editor = "${pkgs.helix}/bin/hx";
    extraConfig = {
      editor.codeView = true;
      richTextBannerDismissed = true;
      locale = "ja_JP";
      dateFormat = "YYYY-MM-DD";
      "ocr.enabled" = true;
      theme = 2;
      themeAutoDetect = true;
      preferredDarkTheme = 2;
      layoutButtonSequence = 2;
      newNoteFocus = "title";
      "markdown.plugin.softbreaks" = false;
      "markdown.plugin.typographer" = false;
      "markdown.plugin.mark" = true;
      showTrayIcon = true;
      startMinimized = false;
      "ui.layout" = {
        key = "root";
        children = [
          {
            key = "sideBar";
            width = 188;
            visible = true;
          }
          {
            key = "noteList";
            width = 250;
            visible = true;
          }
          {
            key = "editor";
            visible = true;
          }
        ];
        visible = true;
      };
      autoUploadCrashDumps = true;
      "sync.interval" = 600;
      noteVisiblePanes = [
        "editor"
      ];
      "editor.spellcheckBeta" = true;
      "spellChecker.languages" = [
        "en-US"
      ];
    };
  };
}

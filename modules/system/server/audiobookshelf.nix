{...}: {
  services.audiobookshelf = {
    enable = true;
    port = 8234;
    openFirewall = true;
  };
}

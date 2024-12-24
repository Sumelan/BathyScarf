{ pkgs, config, inputs, ... }:
{
  services.nginx.virtualHosts = {
    "nextcloud.sakurairo.ddnsfree.com" = {
      useACMEHost = "sakurairo.ddnsfree.com";
      forceSSL = true;
    };
    "audiobookshelf.sakurairo.ddnsfree.com" = {
      useACMEHost = "sakurairo.ddnsfree.com";
      forceSSL = true;
      locations."/" = {
        proxyPass = "http://localhost:8234/";
        proxyWebsockets = true;
      };
    };
  };
  # Prevent 413 Request Entity Too Large error
  # by increasing the maximum allowed size of the client request body
  # For example, set it to 10 GiB
  services.nginx.clientMaxBodySize = "1024M";
  users.users.nginx.extraGroups = [ "acme" ];

  security.acme = {
    acceptTerms = true;
    defaults.email = "bathys@proton.me";
    certs."sakurairo.ddnsfree.com" = {
      domain = "sakurairo.ddnsfree.com";
      extraDomainNames = [ 
        "nextcloud.sakurairo.ddnsfree.com"
        "audiobookshelf.sakurairo.ddnsfree.com"
      ];
      dnsProvider = "dynu";
      dnsPropagationCheck = true;
      credentialsFile = config.age.secrets.dynu-dns-token.path;
    };
  };
}

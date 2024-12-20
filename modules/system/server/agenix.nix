{ pkgs, config, inputs, username, ... }:
{
  imports = [ inputs.agenix.nixosModules.default];
  environment.systemPackages = [ inputs.agenix.packages."${pkgs.system}".default ];

  age.secrets.nextcloud = {
    file = ../../../secrets/nextcloud.age;
    owner = "nextcloud";
    group = "nextcloud";
  };
  age.secrets.dynu-dns-token = {
    file = ../../../secrets/dynu-dns-token.age;
  };
}

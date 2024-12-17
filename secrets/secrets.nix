let
  sumelan = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILby0maWTLaJOlly2ZCd0rzkpMTyLaWQrH0OOUMn2q+x";
  users = [ sumelan ];

  Rin = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBp4HSVtQPcfrRX7mwPMw/vCoXAT67+SEF8qdg0EdNbS";
  systems = [ Rin ];
in
{
  "nextcloud.age".publicKeys = [ sumelan Rin ];
  "dynu-dns-token.age".publicKeys = [ sumelan Rin ];
}

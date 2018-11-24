alter table email."SendmailServer"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references server."AoServer" (server)
  on delete restrict
  on update cascade
;
alter table email."SendmailServer"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" (pkey)
  on delete restrict
  on update cascade
;
alter table email."SendmailServer"
  add constraint server_certificate_fkey
  foreign key (server_certificate)
  references pki."Certificate" (pkey)
  on delete restrict
  on update cascade
;
alter table email."SendmailServer"
  add constraint client_certificate_fkey
  foreign key (client_certificate)
  references pki."Certificate" (pkey)
  on delete restrict
  on update cascade
;
alter table email."SendmailServer"
  add constraint "clientAddrInet_fkey"
  foreign key ("clientAddrInet")
  references "IPAddress" (id)
  on delete restrict
  on update cascade
;
alter table email."SendmailServer"
  add constraint "clientAddrInet6_fkey"
  foreign key ("clientAddrInet6")
  references "IPAddress" (id)
  on delete restrict
  on update cascade
;

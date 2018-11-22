alter table sendmail_servers
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint package_fkey
  foreign key (package)
  references billing."Package" (pkey)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint server_certificate_fkey
  foreign key (server_certificate)
  references ssl_certificates (pkey)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint client_certificate_fkey
  foreign key (client_certificate)
  references ssl_certificates (pkey)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint "clientAddrInet_fkey"
  foreign key ("clientAddrInet")
  references "IPAddress" (id)
  on delete restrict
  on update cascade
;
alter table sendmail_servers
  add constraint "clientAddrInet6_fkey"
  foreign key ("clientAddrInet6")
  references "IPAddress" (id)
  on delete restrict
  on update cascade
;

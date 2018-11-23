alter table pki."Certificate"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table pki."Certificate"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" (pkey)
  on delete restrict
  on update cascade
;

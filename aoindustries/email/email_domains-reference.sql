alter table email_domains
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table email_domains
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;

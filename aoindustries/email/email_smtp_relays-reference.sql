alter table email_smtp_relays
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;
alter table email_smtp_relays
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table email_smtp_relays
  add constraint type_fkey
  foreign key ("type")
  references email_smtp_relay_types ("name")
  on delete restrict
  on update cascade
;
alter table email_smtp_relays
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;

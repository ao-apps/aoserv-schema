alter table email_pipes
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table email_pipes
  add constraint package_fkey
  foreign key (package)
  references packages ("name")
  on delete restrict
  on update cascade
;
alter table email_pipes
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;

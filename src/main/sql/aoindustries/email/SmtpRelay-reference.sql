alter table email."SmtpRelay"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;
alter table email."SmtpRelay"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table email."SmtpRelay"
  add constraint type_fkey
  foreign key ("type")
  references email."SmtpRelayType" ("name")
  on delete restrict
  on update cascade
;
alter table email."SmtpRelay"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (id)
  on delete restrict
  on update cascade
;

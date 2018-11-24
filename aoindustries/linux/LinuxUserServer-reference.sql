alter table linux."LinuxUserServer"
  add constraint username_fkey
  foreign key (username)
  references linux."LinuxUser" (username)
  on delete restrict
  on update cascade
;
alter table linux."LinuxUserServer"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."LinuxServer" (server)
  on delete restrict
  on update cascade
;
alter table linux."LinuxUserServer"
  add constraint autoresponder_from_fkey
  foreign key (autoresponder_from)
  references email."InboxAddress" (pkey)
  on delete restrict
  on update cascade
;
alter table linux."LinuxUserServer"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
alter table linux."LinuxUserServer"
  add constraint sa_integration_mode_fkey
  foreign key (sa_integration_mode)
  references email."SpamAssassinMode" ("name")
  on delete restrict
  on update cascade
;

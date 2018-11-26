alter table linux."UserServer"
  add constraint username_fkey
  foreign key (username)
  references linux."User" (username)
  on delete restrict
  on update cascade
;
alter table linux."UserServer"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table linux."UserServer"
  add constraint autoresponder_from_fkey
  foreign key (autoresponder_from)
  references email."InboxAddress" (id)
  on delete restrict
  on update cascade
;
alter table linux."UserServer"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (id)
  on delete restrict
  on update cascade
;
alter table linux."UserServer"
  add constraint sa_integration_mode_fkey
  foreign key (sa_integration_mode)
  references email."SpamAssassinMode" ("name")
  on delete restrict
  on update cascade
;

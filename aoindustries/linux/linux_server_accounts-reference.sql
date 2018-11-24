alter table linux_server_accounts
  add constraint username_fkey
  foreign key (username)
  references linux_accounts (username)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint ao_server_fkey
  foreign key (ao_server)
  references server."AoServer" (server)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint autoresponder_from_fkey
  foreign key (autoresponder_from)
  references email."InboxAddress" (pkey)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint sa_integration_mode_fkey
  foreign key (sa_integration_mode)
  references email."SpamAssassinMode" ("name")
  on delete restrict
  on update cascade
;

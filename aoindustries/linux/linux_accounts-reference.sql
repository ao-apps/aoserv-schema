alter table linux_accounts
  add constraint username_fkey
  foreign key (username)
  references account."Username" (username)
  on delete restrict
  on update cascade
;
alter table linux_accounts
  add constraint shell_fkey
  foreign key (shell)
  references shells ("path")
  on delete restrict
  on update cascade
;
alter table linux_accounts
  add constraint type_fkey
  foreign key (type)
  references linux."LinuxUserType" ("name")
  on delete restrict
  on update cascade
;
alter table linux_accounts
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;

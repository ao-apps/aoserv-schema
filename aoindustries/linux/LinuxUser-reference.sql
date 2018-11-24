alter table linux."LinuxUser"
  add constraint username_fkey
  foreign key (username)
  references account."Username" (username)
  on delete restrict
  on update cascade
;
alter table linux."LinuxUser"
  add constraint shell_fkey
  foreign key (shell)
  references linux."Shell" ("path")
  on delete restrict
  on update cascade
;
alter table linux."LinuxUser"
  add constraint type_fkey
  foreign key ("type")
  references linux."LinuxUserType" ("name")
  on delete restrict
  on update cascade
;
alter table linux."LinuxUser"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;

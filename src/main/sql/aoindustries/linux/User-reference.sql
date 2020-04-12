alter table linux."User"
  add constraint username_fkey
  foreign key (username)
  references account."User" (username)
  on delete restrict
  on update cascade
;
alter table linux."User"
  add constraint shell_fkey
  foreign key (shell)
  references linux."Shell" ("path")
  on delete restrict
  on update cascade
;
alter table linux."User"
  add constraint type_fkey
  foreign key ("type")
  references linux."UserType" ("name")
  on delete restrict
  on update cascade
;
alter table linux."User"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (id)
  on delete restrict
  on update cascade
;

alter table postgresql."User"
  add constraint username_fkey
  foreign key (username)
  references account."Username" (username)
  on delete restrict
  on update cascade
;
alter table postgresql."User"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
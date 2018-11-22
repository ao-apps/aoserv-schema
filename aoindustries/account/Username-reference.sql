alter table account."Username"
  add constraint package_fkey
  foreign key (package)
  references packages ("name")
  on delete restrict
  on update cascade
;
alter table account."Username"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
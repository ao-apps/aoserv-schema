alter table usernames
  add constraint package_fkey
  foreign key (package)
  references packages (name)
  on delete restrict
  on update cascade
;
alter table usernames
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;

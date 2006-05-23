alter table interbase_users
  add constraint username_fkey
  foreign key (username)
  references usernames (username)
  on delete restrict
  on update cascade
;
alter table interbase_users
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;

alter table master_hosts
  add constraint username_fkey
  foreign key (username)
  references master_users (username)
  on delete restrict
  on update cascade
;

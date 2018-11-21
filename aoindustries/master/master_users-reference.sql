alter table master_users
  add constraint username_fkey
  foreign key (username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;

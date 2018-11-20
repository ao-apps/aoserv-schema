alter table master_users
  add constraint username_fkey
  foreign key (username)
  references business_administrators (username)
  on delete restrict
  on update cascade
;

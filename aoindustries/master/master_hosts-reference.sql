alter table master_hosts
  add constraint username_fkey
  foreign key (username)
  references master."MasterUser" (username)
  on delete restrict
  on update cascade
;

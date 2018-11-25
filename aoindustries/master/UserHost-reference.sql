alter table master."UserHost"
  add constraint username_fkey
  foreign key (username)
  references master."User" (username)
  on delete restrict
  on update cascade
;
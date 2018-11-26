alter table master."UserHost"
  add constraint username_fkey
  foreign key (username)
  references master."User" (username)
  on delete restrict
  on update cascade
;
alter table master."UserHost"
  add constraint server_fkey
  foreign key (server)
  references server."Server" (id)
  on delete restrict
  on update cascade
;
